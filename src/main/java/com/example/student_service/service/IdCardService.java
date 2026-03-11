package com.example.student_service.service;

import com.example.student_service.entity.Student;
import com.microsoft.playwright.*;
import com.microsoft.playwright.options.Margin;
import com.microsoft.playwright.options.WaitUntilState;
import org.springframework.stereotype.Service;

import jakarta.annotation.PostConstruct;
import java.util.Base64;
import java.util.List;
import java.nio.file.Files;
import java.nio.file.Paths;

@Service
public class IdCardService {

    private static final int COLS           = 6;
    private static final int ROWS           = 3;
    private static final int CARDS_PER_PAGE = COLS * ROWS;
    private static final int CARD_W         = 190;
    private static final int CARD_H         = 300;
    private static final int GAP            = 6;
    private static final int PAGE_PAD       = 10;
    private static final int PAGE_W         = COLS * CARD_W + (COLS - 1) * GAP + PAGE_PAD * 2;
    private static final int PAGE_H         = ROWS * CARD_H + (ROWS - 1) * GAP + PAGE_PAD * 2;

    private String signatureBase64;

    @PostConstruct
    public void init() {
        try {
            byte[] imageBytes = Files.readAllBytes(
                    Paths.get("src/main/resources/static/signature.jpeg")
            );
            signatureBase64 = "data:image/jpeg;base64,"
                    + Base64.getEncoder().encodeToString(imageBytes);
        } catch (Exception e) {
            // Fallback: empty string means no image rendered
            signatureBase64 = "";
            System.err.println("Warning: Could not load signature image. " + e.getMessage());
        }
    }

    public byte[] generatePdf(List<Student> students) {
        try (Playwright playwright = Playwright.create()) {
            Browser browser = playwright.chromium().launch(
                    new BrowserType.LaunchOptions().setHeadless(true)
            );
            Page page = browser.newPage();

            page.setContent(buildHtml(students), new Page.SetContentOptions()
                    .setWaitUntil(WaitUntilState.NETWORKIDLE));

            byte[] pdf = page.pdf(new Page.PdfOptions()
                    .setPrintBackground(true)
                    .setMargin(new Margin()
                            .setTop("0")
                            .setBottom("0")
                            .setLeft("0")
                            .setRight("0"))
                    .setWidth(PAGE_W + "px")
                    .setHeight(PAGE_H + "px")
            );

            browser.close();
            return pdf;
        }
    }

    private String buildHtml(List<Student> students) {
        StringBuilder cards = new StringBuilder();

        for (int i = 0; i < students.size(); i++) {
            Student s = students.get(i);

            // Insert page break before every new page (except the first)
            if (i > 0 && i % CARDS_PER_PAGE == 0) {
                cards.append("<div class=\"page-break\"></div>");
            }

            String photoUrl = (s.getImage() != null && s.getImage().getIsActive())
                    ? s.getImage().getImageUrl()
                    : "https://via.placeholder.com/70x80";

            cards.append("<div class=\"card\">")

                    .append("<div class=\"school\">")
                    .append("<h2>TAMIRUL MILLAT KAMIL MADRASAH</h2>")
                    .append("<p>ERSHADNAGAR, TONGI, GAZIPUR</p>")
                    .append("</div>")

                    .append("<div class=\"id-bar\">ID CARD</div>")
                    .append("<div class=\"student-id\">").append(s.getStudentSystemId()).append("</div>")

                    .append("<div class=\"photo\">")
                    .append("<img src=\"").append(photoUrl).append("\" style=\"width:100%;height:100%;object-fit:cover;\">")
                    .append("</div>")

                    .append("<div class=\"name\">").append(s.getNameEnglish()).append("</div>")

                    .append("<table class=\"info\">")
                    .append("<tr><td class=\"label\">Class</td><td>: ").append(s.getStudentClass() != null ? s.getStudentClass().getName() : "N/A").append("</td></tr>")
                    .append("<tr><td class=\"label\">Shift</td><td>: ").append(s.getShift() != null ? s.getShift().getName() : "N/A").append("</td></tr>");

            // Only show Gender Section if not null
            if (s.getGenderSection() != null) {
                cards.append("<tr><td class=\"label\">Section Type</td><td>: ").append(s.getGenderSection().getGenderName()).append("</td></tr>");
            }

            // Only show Section if not null
            if (s.getSection() != null) {
                cards.append("<tr><td class=\"label\">Section</td><td>: ").append(s.getSection().getSectionName()).append("</td></tr>");
            }

            // Only show Group if not null
            if (s.getStudentGroup() != null) {
                cards.append("<tr><td class=\"label\">Group</td><td>: ").append(s.getStudentGroup().getGroupName()).append("</td></tr>");
            }

            cards.append("<tr><td class=\"label\">Roll</td><td>: ").append(s.getClassRoll() != null ? s.getClassRoll() : "N/A").append("</td></tr>")
                    .append("<tr><td class=\"label\">Year</td><td>: ").append(s.getAcademicYear() != null ? s.getAcademicYear().getYearName() : "N/A").append("</td></tr>")
                    .append("<tr><td class=\"label\">Mobile</td><td>: ").append(s.getMotherPhone() != null ? s.getMotherPhone() : "N/A").append("</td></tr>")
                    .append("</table>")

                    .append("<div class=\"signature\">")
                    .append(signatureBase64.isEmpty() ? "" :
                            "<img src=\"" + signatureBase64 + "\" class=\"signature-img\">")
                    .append("<div class=\"signature-line\"></div>")
                    .append("<div class=\"principal\">PRINCIPAL</div>")
                    .append("</div>")

                    .append("<div class=\"bottom\"></div>")
                    .append("</div>");
        }

        return "<!DOCTYPE html><html><head><meta charset=\"UTF-8\"><style>"
                + getCss()
                + "</style></head><body>"
                + "<div class=\"grid\">" + cards + "</div>"
                + "</body></html>";
    }

    private String getCss() {
        // Do NOT use .formatted() or String.format() here — CSS contains % signs
        // which Java's formatter will try to interpret as format specifiers.
        // Use plain string concatenation with constants instead.
        return "* { box-sizing: border-box; margin: 0; padding: 0; }"

                + "body {"
                + "  background: #f0f0f0;"
                + "  font-family: Arial, sans-serif;"
                + "  padding: " + PAGE_PAD + "px;"
                + "}"

                + ".grid {"
                + "  display: flex;"
                + "  flex-wrap: wrap;"
                + "  gap: " + GAP + "px;"
                + "}"

                // Card
                + ".card {"
                + "  width: " + CARD_W + "px;"
                + "  height: " + CARD_H + "px;"
                + "  background: linear-gradient(#d9ecf7, #ffffff);"
                + "  border: 2px dashed #999;"
                + "  padding: 8px;"
                + "  position: relative;"
                + "  overflow: hidden;"
                + "}"

                // Header
                + ".school { text-align: center; }"
                + ".school h2 { color: #1d3e8a; font-size: 8px; line-height: 1.2; }"
                + ".school p  { font-size: 7px; margin-top: 2px; }"

                // Vertical bars
                + ".id-bar {"
                + "  position: absolute;"
                + "  left: 0;"
                + "  top: 52px;"
                + "  background: #1d5bbf;"
                + "  color: white;"
                + "  padding: 6px 3px;"
                + "  font-weight: bold;"
                + "  font-size: 7px;"
                + "  writing-mode: vertical-rl;"
                + "  transform: rotate(180deg);"
                + "  letter-spacing: 1px;"
                + "}"

                + ".student-id {"
                + "  position: absolute;"
                + "  right: 0;"
                + "  top: 52px;"
                + "  background: #1d5bbf;"
                + "  color: white;"
                + "  padding: 6px 3px;"
                + "  font-weight: bold;"
                + "  font-size: 7px;"
                + "  writing-mode: vertical-rl;"
                + "  letter-spacing: 1px;"
                + "}"

                // Photo
                + ".photo {"
                + "  width: 70px;"
                + "  height: 80px;"
                + "  border: 2px solid #4da3d9;"
                + "  margin: 6px auto;"
                + "  overflow: hidden;"
                + "}"

                // Name
                + ".name {"
                + "  text-align: center;"
                + "  color: #7a1fa2;"
                + "  font-weight: bold;"
                + "  font-size: 8px;"
                + "  margin: 4px 0 2px;"
                + "}"

                // Info table
                + ".info { width: 100%; }"
                + ".info td { padding: 1px 2px; font-size: 7.5px; line-height: 1.3; }"
                + ".label { width: 45px; font-weight: bold; }"

                // Signature block
                + ".signature {"
                + "  position: absolute;"
                + "  bottom: 22px;"
                + "  width: 90%;"
                + "  left: 5%;"
                + "  text-align: right;"
                + "}"
                // ✅ Signature image styles
                + ".signature-img {"
                + "  display: block;"
                + "  margin-left: auto;"
                + "  margin-right: 0;"
                + "  width: 60px;"
                + "  height: 28px;"
                + "  object-fit: contain;"
                + "  margin-bottom: 0;"
                + "}"
                + ".signature-line { border-top: 1px dashed #555; margin-bottom: 2px; }"
                + ".principal { font-size: 7px; }"

                // Bottom bar
                + ".bottom {"
                + "  position: absolute;"
                + "  bottom: 0; left: 0;"
                + "  width: 100%;"
                + "  height: 20px;"
                + "  background: linear-gradient(90deg, #2aa4d4, #1d5bbf);"
                + "}"

                // Page break
                + ".page-break {"
                + "  width: 100%;"
                + "  page-break-before: always;"
                + "  break-before: page;"
                + "}";
    }
}