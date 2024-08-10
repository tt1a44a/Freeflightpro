.class Lcom/parrot/freeflight/home/HomeUIController$5;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 615
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$5;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$5;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 621
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/network/InternetStatusManager;->isInternetAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$5;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$800(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 633
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$5;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$5;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$5;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 631
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$5;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$700(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$5;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$5;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method
