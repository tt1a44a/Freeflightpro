.class public Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;
.super Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;
.source "WifiListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/WifiListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder",
        "<",
        "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDroneNameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mForgetTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLoadingImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNoDronesTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mProgressImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWifiLockImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWifiStatusView:Lcom/parrot/freeflight/home/widget/WifiSignalView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/home/WifiListAdapter;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/home/WifiListAdapter;Landroid/view/View;)V
    .locals 3
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/WifiListAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->this$0:Lcom/parrot/freeflight/home/WifiListAdapter;

    .line 104
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;-><init>(Landroid/view/View;)V

    .line 105
    const v1, 0x7f0a0455

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mDroneNameTextView:Landroid/widget/TextView;

    .line 106
    const v1, 0x7f0a01e4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/home/widget/WifiSignalView;

    iput-object v1, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mWifiStatusView:Lcom/parrot/freeflight/home/widget/WifiSignalView;

    .line 107
    const v1, 0x7f0a049a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mNoDronesTextView:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f0a046e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mForgetTextView:Landroid/widget/TextView;

    .line 109
    iget-object v1, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mForgetTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mForgetTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v1, 0x7f0a01e2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mProgressImageView:Landroid/widget/ImageView;

    .line 111
    const v1, 0x7f0a01e1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mLoadingImageView:Landroid/widget/ImageView;

    .line 112
    const v1, 0x7f0a01e3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mWifiLockImageView:Landroid/widget/ImageView;

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mDroneNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 115
    iget-object v1, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mNoDronesTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 116
    iget-object v1, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mForgetTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mForgetTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)V
    .locals 10
    .param p1, "wifiInfo"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "noWifiInfo"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v9, 0x7f010013

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 121
    if-ne p1, p2, :cond_3

    move v1, v3

    .line 122
    .local v1, "isNoDrones":Z
    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isConnecting()Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 125
    .local v2, "showProgressView":Z
    :goto_1
    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isSaved()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->this$0:Lcom/parrot/freeflight/home/WifiListAdapter;

    invoke-static {v5}, Lcom/parrot/freeflight/home/WifiListAdapter;->access$200(Lcom/parrot/freeflight/home/WifiListAdapter;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-ge v5, v8, :cond_5

    :cond_0
    move v0, v3

    .line 126
    .local v0, "displayForgetButton":Z
    :goto_2
    iget-object v8, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mDroneNameTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v8, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mWifiStatusView:Lcom/parrot/freeflight/home/widget/WifiSignalView;

    if-nez v1, :cond_1

    if-eqz v2, :cond_7

    :cond_1
    move v5, v7

    :goto_4
    invoke-virtual {v8, v5}, Lcom/parrot/freeflight/home/widget/WifiSignalView;->setVisibility(I)V

    .line 128
    iget-object v5, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mWifiLockImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isSecured()Z

    move-result v8

    if-nez v8, :cond_8

    :cond_2
    :goto_5
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v5, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->itemView:Landroid/view/View;

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isActive()Z

    move-result v7

    if-nez v7, :cond_9

    :goto_6
    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    iget-object v5, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mForgetTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    move v3, v4

    :goto_7
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v5, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mProgressImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    move v3, v4

    :goto_8
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    if-eqz v2, :cond_c

    .line 133
    iget-object v3, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mProgressImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    :goto_9
    if-nez v1, :cond_d

    .line 138
    iget-object v3, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v3, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mNoDronesTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v3, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mDroneNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v3, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mWifiStatusView:Lcom/parrot/freeflight/home/widget/WifiSignalView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getRssi()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/home/widget/WifiSignalView;->updateRssiLevel(S)V

    .line 153
    :goto_a
    return-void

    .end local v0    # "displayForgetButton":Z
    .end local v1    # "isNoDrones":Z
    .end local v2    # "showProgressView":Z
    :cond_3
    move v1, v4

    .line 121
    goto/16 :goto_0

    .restart local v1    # "isNoDrones":Z
    :cond_4
    move v2, v4

    .line 122
    goto/16 :goto_1

    .restart local v2    # "showProgressView":Z
    :cond_5
    move v0, v4

    .line 125
    goto :goto_2

    .restart local v0    # "displayForgetButton":Z
    :cond_6
    move v5, v4

    .line 126
    goto :goto_3

    :cond_7
    move v5, v4

    .line 127
    goto :goto_4

    :cond_8
    move v7, v4

    .line 128
    goto :goto_5

    :cond_9
    move v3, v4

    .line 129
    goto :goto_6

    :cond_a
    move v3, v6

    .line 130
    goto :goto_7

    :cond_b
    move v3, v6

    .line 131
    goto :goto_8

    .line 135
    :cond_c
    iget-object v3, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_9

    .line 143
    :cond_d
    iget-object v3, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->this$0:Lcom/parrot/freeflight/home/WifiListAdapter;

    invoke-static {v3}, Lcom/parrot/freeflight/home/WifiListAdapter;->access$300(Lcom/parrot/freeflight/home/WifiListAdapter;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 144
    iget-object v3, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mNoDronesTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v3, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mLoadingImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a

    .line 148
    :cond_e
    iget-object v3, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mNoDronesTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v3, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 150
    iget-object v3, p0, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 87
    check-cast p1, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    check-cast p2, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->update(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)V

    return-void
.end method
