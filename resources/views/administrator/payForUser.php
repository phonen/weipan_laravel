<?php include_once 'header.php'; ?>
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row" style="margin-top: 40px;">
                    <div class="col-lg-12">
                        <form method="post" role="form">
                            <div class="form-group input-group">
                                <span class="input-group-addon">用户编号</span>
                                <input disabled="disabled" type="text" name="id_user" class="form-control" value="<?php echo $id_user; ?>">
                            </div>
                            <div class="form-group input-group">
                                <span class="input-group-addon">充值金额</span>
                                <input type="text" name="stake" class="form-control" placeholder="此处输入的是美元 例如输入10 则为给用户账户充值10$">
                                <span class="input-group-addon">.00</span>
                            </div>
                            <div class="form-group input-group">
                                <span class="input-group-addon">流水编号</span>
                                <input type="text" name="transfer_number" class="form-control">
                            </div>
                            <div style="text-align: center">
                                <button type="submit" class="btn btn-primary">确认充值</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
<?php include_once 'footer.php'; ?>