.class Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;
.super Ljava/lang/Object;
.source "MavlinkFileListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getTitleBeforeExecute(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

.field final synthetic val$dialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$postActionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;

.field final synthetic val$saveActionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Landroid/widget/EditText;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;Landroid/support/v7/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;->val$saveActionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;

    iput-object p4, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;->val$postActionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;

    iput-object p5, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;->val$dialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    .line 443
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 445
    const/4 v3, 0x0

    .line 446
    .local v3, "titleExists":Z
    invoke-static {}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->getAllSavedPlanGeneralInfos()Ljava/util/List;

    move-result-object v1

    .line 447
    .local v1, "savedPlanItems":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;>;"
    if-eqz v1, :cond_1

    .line 448
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    .line 449
    .local v0, "item":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 450
    const/4 v3, 0x1

    .line 456
    .end local v0    # "item":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    :cond_1
    if-eqz v3, :cond_3

    .line 457
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    const v6, 0x7f1105a2

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 466
    .end local v1    # "savedPlanItems":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;>;"
    .end local v3    # "titleExists":Z
    :cond_2
    :goto_0
    return-void

    .line 459
    .restart local v1    # "savedPlanItems":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;>;"
    .restart local v3    # "titleExists":Z
    :cond_3
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;->val$saveActionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;

    invoke-interface {v4, v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;->execute(Ljava/lang/String;)V

    .line 460
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;->val$postActionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;

    if-eqz v4, :cond_4

    .line 461
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;->val$postActionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;->execute(Ljava/lang/String;)V

    .line 463
    :cond_4
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;->val$dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
