.class Lcom/parrot/freeflight/home/HomeUIController$8;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/Window;Landroid/support/design/widget/NavigationView;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Lcom/parrot/freeflight/util/PermissionChecker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$8;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 660
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$8;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$8;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$1200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/view/UnclickableEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/view/UnclickableEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "newName":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$8;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getName()Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "currentName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 664
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 665
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$8;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->setName(Ljava/lang/String;)V

    .line 671
    .end local v0    # "currentName":Ljava/lang/String;
    .end local v1    # "newName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 666
    .restart local v0    # "currentName":Ljava/lang/String;
    .restart local v1    # "newName":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_0

    .line 667
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$8;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$1200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/view/UnclickableEditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/UnclickableEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
