<?php
include('../includes/config.php'); // Ensure the path is correct

// Fetch payment records
$query = $dbh->prepare("SELECT id, user_email, booking_number, transaction_id, amount, status, created_at FROM payments");
$query->execute();
$results = $query->fetchAll(PDO::FETCH_ASSOC);
?>

<table style="width: 100%; border-collapse: collapse; margin-top: 10px; font-size: 14px;">
    <thead>
        <tr style="background-color: #f5f5f5; text-align: left;">
            <th style="padding: 10px; border: 1px solid #ddd;">ID</th>
            <th style="padding: 10px; border: 1px solid #ddd;">User Email</th>
            <th style="padding: 10px; border: 1px solid #ddd;">Booking Number</th>
            <th style="padding: 10px; border: 1px solid #ddd;">Transaction ID</th>
            <th style="padding: 10px; border: 1px solid #ddd;">Amount</th>
            <th style="padding: 10px; border: 1px solid #ddd;">Status</th>
            <th style="padding: 10px; border: 1px solid #ddd;">Created At</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($results as $row) { ?>
        <tr style="border-bottom: 1px solid #ddd;">
            <td style="padding: 10px; border: 1px solid #ddd;"><?php echo htmlspecialchars($row['id']); ?></td>
            <td style="padding: 10px; border: 1px solid #ddd;"><?php echo htmlspecialchars($row['user_email']); ?></td>
            <td style="padding: 10px; border: 1px solid #ddd;"><?php echo htmlspecialchars($row['booking_number']); ?></td>
            <td style="padding: 10px; border: 1px solid #ddd;"><?php echo htmlspecialchars($row['transaction_id']); ?></td>
            <td style="padding: 10px; border: 1px solid #ddd;"><?php echo number_format($row['amount'], 2); ?></td>
            <td style="padding: 10px; border: 1px solid #ddd;"><?php echo htmlspecialchars($row['status']); ?></td>
            <td style="padding: 10px; border: 1px solid #ddd;"><?php echo htmlspecialchars($row['created_at']); ?></td>
        </tr>
        <?php } ?>
    </tbody>
</table>


