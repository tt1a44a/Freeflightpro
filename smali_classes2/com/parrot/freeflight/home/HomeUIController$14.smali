.class Lcom/parrot/freeflight/home/HomeUIController$14;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;


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
    .line 709
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 712
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/WifiListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/WifiListView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 714
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1900(Lcom/parrot/freeflight/home/HomeUIController;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 715
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 716
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/WifiListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/home/WifiListView;->setSwipeToRefreshEnable(Z)V

    .line 717
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/WifiListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/WifiListView;->startLoading()V

    .line 718
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/wifi/WifiDeviceProvider;->startScan()V

    .line 723
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    .line 724
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 725
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setTranslationY(F)V

    .line 726
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setVisibility(I)V

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setTranslationY(F)V

    .line 729
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setTranslationY(F)V

    .line 731
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$400(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 745
    :cond_2
    :goto_1
    return-void

    .line 720
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/WifiListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/home/WifiListView;->setSwipeToRefreshEnable(Z)V

    goto :goto_0

    .line 734
    :cond_4
    if-nez p1, :cond_2

    .line 735
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 736
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setTranslationY(F)V

    .line 737
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setVisibility(I)V

    .line 739
    :cond_5
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setTranslationY(F)V

    .line 740
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setTranslationY(F)V

    .line 742
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$14;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$400(Lcom/parrot/freeflight/home/HomeUIController;)V

    goto :goto_1
.end method
