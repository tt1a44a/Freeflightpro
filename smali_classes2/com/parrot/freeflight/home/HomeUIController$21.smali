.class Lcom/parrot/freeflight/home/HomeUIController$21;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


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
    .line 818
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 822
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 824
    .local v0, "id":I
    const v1, 0x7f0a0345

    if-ne v0, v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 848
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$700(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v1

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 849
    const/4 v1, 0x1

    return v1

    .line 826
    :cond_1
    const v1, 0x7f0a0344

    if-ne v0, v1, :cond_2

    .line 827
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$3000(Lcom/parrot/freeflight/home/HomeUIController;)V

    goto :goto_0

    .line 828
    :cond_2
    const v1, 0x7f0a034c

    if-ne v0, v1, :cond_3

    .line 829
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 830
    :cond_3
    const v1, 0x7f0a0347

    if-ne v0, v1, :cond_4

    .line 831
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v4}, Lcom/parrot/freeflight/home/HomeUIController;->access$3100(Lcom/parrot/freeflight/home/HomeUIController;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 832
    :cond_4
    const v1, 0x7f0a0348

    if-ne v0, v1, :cond_5

    .line 833
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v4}, Lcom/parrot/freeflight/home/HomeUIController;->access$3200(Lcom/parrot/freeflight/home/HomeUIController;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 834
    :cond_5
    const v1, 0x7f0a0349

    if-ne v0, v1, :cond_6

    .line 835
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/update/UpdateListActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 836
    :cond_6
    const v1, 0x7f0a0346

    if-ne v0, v1, :cond_7

    .line 837
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 838
    :cond_7
    const v1, 0x7f0a0343

    if-ne v0, v1, :cond_9

    .line 839
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$1000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 840
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 842
    :cond_8
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 844
    :cond_9
    const v1, 0x7f0a0342

    if-ne v0, v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$21;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/parrot/freeflight/about/AboutActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
