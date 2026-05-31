USE medicine_inventory;

-- =========================================================================
-- PART 1: TRIGGER 
-- =========================================================================

DROP TRIGGER IF EXISTS After_Prescription_Detail_Insert;

DELIMITER //

CREATE TRIGGER After_Prescription_Detail_Insert
AFTER INSERT ON PRESCRIPTION_DETAILS
FOR EACH ROW
BEGIN
    DECLARE new_total DECIMAL(10,2);

    SELECT COALESCE(SUM(m.price * pd.quantity), 0)
    INTO new_total
    FROM PRESCRIPTION_DETAILS pd
    JOIN MEDICINE m ON m.medicine_id = pd.medicine_id
    WHERE pd.prescription_id = NEW.prescription_id;

    UPDATE Bill
    SET total = new_total
    WHERE prescription_id = NEW.prescription_id;

END //

DELIMITER ;