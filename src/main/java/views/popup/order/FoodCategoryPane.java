package views.popup.order;

import java.awt.Color;
import java.util.HashMap;
import java.util.Map;

import models.FoodCategory;
import utils.RandomColor;

/**
 *
 * @author Nguyễn Thanh Hậu
 */
public class FoodCategoryPane extends javax.swing.JPanel {

    FoodCategory foodCategory;

    private static final Map<String, Color> CATEGORY_COLORS = new HashMap<>();

    static {
        CATEGORY_COLORS.put("Đồ Ăn Vặt", new Color(231, 76, 60));      // Rich Tomato Red
        CATEGORY_COLORS.put("Trà Sữa", new Color(245, 222, 179));  // Creamy Beige
        CATEGORY_COLORS.put("Cà Phê", new Color(101, 67, 33));     // Deep Espresso Brown
        CATEGORY_COLORS.put("Topping", new Color(147, 197, 114));  // Fresh Pistachio Green
    }

    public FoodCategoryPane(FoodCategory fc) {
        this.foodCategory = fc;
        initComponents();
        lbName.setText(fc.getName());
        // Color bg = RandomColor.getColor();
        // Color bgText = RandomColor.getContrastColor(bg);
        Color bg = CATEGORY_COLORS.getOrDefault(fc.getName(), Color.ORANGE);  // Default to gray if not found
        Color bgText = RandomColor.getContrastColor(bg);

        setBackground(bg);
        lbName.setForeground(bgText);
    }

    public FoodCategory getFoodCategory() {
        return foodCategory;
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        lbName = new javax.swing.JLabel();

        setBackground(new java.awt.Color(255, 204, 204));
        setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        setMaximumSize(new java.awt.Dimension(150, 50));
        setPreferredSize(new java.awt.Dimension(150, 50));
        setLayout(new java.awt.GridBagLayout());

        lbName.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        lbName.setForeground(new java.awt.Color(51, 0, 0));
        lbName.setText("Topping");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.BASELINE;
        add(lbName, gridBagConstraints);
    }// </editor-fold>//GEN-END:initComponents

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel lbName;
    // End of variables declaration//GEN-END:variables

}
