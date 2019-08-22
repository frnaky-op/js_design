<div class="container mt-4">
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Message</th>
            <th>Reply</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($wpdb->get_results("select * from $table") as $feedback): ?>
            <?php
            $data = json_decode($feedback->content, true);
            ?>
            <tr>
                <td>
                    <a href="#"><?= $data['name']; ?></a>
                </td>
                <td><?= $data['email']; ?></td>
                <td><?= $data['message']; ?></td>
                <td><?= $feedback->reply; ?></td>
                <td>
                    <a class="btn btn-primary" href="<?= admin_url('admin.php?page=feedback&id=' . $feedback->id); ?>">Reply</a>
                </td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>