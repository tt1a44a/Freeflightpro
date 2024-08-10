.class Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DroneInfosUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/DroneInfosUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DroneInfosAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInfos:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/infos/DroneInfosUiController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 746
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 747
    iput-object p2, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->mInfos:Ljava/util/List;

    .line 748
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;Ljava/util/List;Lcom/parrot/freeflight/infos/DroneInfosUiController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/parrot/freeflight/infos/DroneInfosUiController$1;

    .prologue
    .line 742
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 768
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 742
    check-cast p1, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->onBindViewHolder(Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 773
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 774
    .local v2, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 775
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v2, v4}, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;->populateTextView(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    instance-of v6, p1, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;

    if-eqz v6, :cond_2

    .line 778
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v6}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v7, v7, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v8, v8, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->shouldUpdateProductFromEmbeddedVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v0

    .line 779
    .local v0, "embeddedUpdate":Z
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v6}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v7, v7, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v8, v8, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->shouldUpdateProductFromServerVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v1

    .line 780
    .local v1, "serverUpdate":Z
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v6}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v7, v7, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v8, v8, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isProductUpdateMandatory(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v3

    .line 782
    .local v3, "updateMandatory":Z
    const-string v5, ""

    .line 783
    .local v5, "version":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 784
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v6}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v7, v7, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getEmbeddedFirmwareVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v5

    .line 789
    :cond_0
    :goto_0
    check-cast p1, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;

    .end local p1    # "holder":Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;
    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p1, v6, v3, v5}, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->checkUpdate(ZZLjava/lang/String;)V

    .line 791
    .end local v0    # "embeddedUpdate":Z
    .end local v1    # "serverUpdate":Z
    .end local v3    # "updateMandatory":Z
    .end local v5    # "version":Ljava/lang/String;
    :cond_2
    return-void

    .line 785
    .restart local v0    # "embeddedUpdate":Z
    .restart local v1    # "serverUpdate":Z
    .restart local v3    # "updateMandatory":Z
    .restart local v5    # "version":Ljava/lang/String;
    .restart local p1    # "holder":Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;
    :cond_3
    if-eqz v1, :cond_0

    .line 786
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v6}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v7, v7, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getServerFirmwareVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 789
    .end local p1    # "holder":Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 755
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 756
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c00a6

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 757
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;

    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-direct {v1, v2, v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;Landroid/view/View;)V

    .line 763
    .local v1, "viewHolder":Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;
    :goto_0
    return-object v1

    .line 759
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c00a5

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 760
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;

    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosAdapter;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-direct {v1, v2, v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;Landroid/view/View;)V

    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosViewHolder;
    goto :goto_0
.end method
