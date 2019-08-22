<form class="col-md-6 mt-4" method="post" action="<?= admin_url('admin.php?page=feedback&id=' . $feedback->id . '&method=store'); ?>">
    <input type="hidden" name="action" value="admin_post_feedback_reply">
    <div class="form-group">
        <label>Name</label>
        <input class="form-control" value="<?= $data['name']; ?>" disabled>
    </div>
    <div class="form-group">
        <label>Email</label>
        <input class="form-control" value="<?= $data['email']; ?>" disabled>
    </div>
    <div class="form-group">
        <label>Message</label>
        <textarea class="form-control" disabled><?= $data['message']; ?></textarea>
    </div>
    <div class="form-group">
        <label>Reply</label>
        <input class="form-control" name="reply" value="<?= $feedback->reply; ?>" required>
    </div>
    <button class="btn btn-primary">Submit Reply</button>
</form>