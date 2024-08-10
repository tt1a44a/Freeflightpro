.class Lcom/parrot/freeflight/update/UpdaterController$3;
.super Ljava/lang/Object;
.source "UpdaterController.java"

# interfaces
.implements Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdaterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdaterController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 6
    .param p1, "succeeded"    # Z
    .param p2, "downloadedProducts"    # [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 606
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 607
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p2, v2

    .line 608
    .local v0, "downloadedProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v4}, Lcom/parrot/freeflight/update/UpdaterController;->access$800(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 609
    .local v1, "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    iget-object v5, v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v5, v0, :cond_0

    .line 610
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->downloaded:Z

    .line 607
    .end local v1    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 616
    .end local v0    # "downloadedProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    if-eqz p1, :cond_3

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DOWNLOADING_SUCCEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    :goto_1
    invoke-static {v3, v2}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 617
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$902(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask;

    .line 618
    return-void

    .line 616
    :cond_3
    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DOWNLOADING_FAILED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    goto :goto_1
.end method

.method public onInternetNeeded()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_INTERNET_NEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 586
    return-void
.end method

.method public onProgressChange(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;F)V
    .locals 4
    .param p1, "downloadingProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "downloadingVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "progress"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 590
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$400(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    .line 591
    invoke-static {v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$500(Lcom/parrot/freeflight/update/UpdaterController;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    if-eq p1, v3, :cond_6

    :cond_1
    move v0, v2

    .line 592
    .local v0, "productUpdated":Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$600(Lcom/parrot/freeflight/update/UpdaterController;)F

    move-result v3

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 593
    .local v1, "update":Z
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v2, p2}, Lcom/parrot/freeflight/update/UpdaterController;->access$402(Lcom/parrot/freeflight/update/UpdaterController;Ljava/lang/String;)Ljava/lang/String;

    .line 594
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v2, p1}, Lcom/parrot/freeflight/update/UpdaterController;->access$502(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 595
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v2, p3}, Lcom/parrot/freeflight/update/UpdaterController;->access$602(Lcom/parrot/freeflight/update/UpdaterController;F)F

    .line 596
    if-eqz v0, :cond_4

    .line 597
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    sget-object v3, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DOWNLOADING_UPDATED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 599
    :cond_4
    if-eqz v1, :cond_5

    .line 600
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v2}, Lcom/parrot/freeflight/update/UpdaterController;->access$700(Lcom/parrot/freeflight/update/UpdaterController;)V

    .line 602
    :cond_5
    return-void

    .end local v0    # "productUpdated":Z
    .end local v1    # "update":Z
    :cond_6
    move v0, v1

    .line 591
    goto :goto_0
.end method
