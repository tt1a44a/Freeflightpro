.class public Lcom/parrot/freeflight/home/widget/WifiSignalView;
.super Landroid/widget/ImageView;
.source "WifiSignalView.java"


# static fields
.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field public static final RSSI_NUMBER_OF_LEVEL:I = 0x4


# instance fields
.field private mRssiLevel:I

.field private mWifiSignalsDrawable:[Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/home/widget/WifiSignalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/home/widget/WifiSignalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v7, 0x4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v4, -0x1

    iput v4, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mRssiLevel:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 40
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f070548

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 42
    .local v3, "wifiSignalLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    if-eqz v3, :cond_3

    .line 43
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 44
    new-array v4, v7, [Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mWifiSignalsDrawable:[Landroid/graphics/drawable/Drawable;

    .line 46
    const v4, 0x7f0a0536

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 47
    .local v2, "wifiSignal0":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mWifiSignalsDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const v6, 0x7f0a0537

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 48
    iget-object v4, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mWifiSignalsDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    const v6, 0x7f0a0538

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 49
    iget-object v4, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mWifiSignalsDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    const v6, 0x7f0a0539

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 50
    iget-object v4, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mWifiSignalsDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    const v6, 0x7f0a053a

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 52
    if-eqz v2, :cond_0

    .line 53
    const v4, 0x7f050131

    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 56
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_2

    .line 57
    iget-object v4, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mWifiSignalsDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 58
    iget-object v4, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mWifiSignalsDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v0

    const v5, 0x7f050146

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 56
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/home/widget/WifiSignalView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .end local v0    # "i":I
    .end local v2    # "wifiSignal0":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method


# virtual methods
.method public switchToDisconnectedMode()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mWifiSignalsDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mWifiSignalsDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/widget/WifiSignalView;->invalidate()V

    .line 94
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mRssiLevel:I

    .line 96
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public updateRssiLevel(S)V
    .locals 5
    .param p1, "rssi"    # S

    .prologue
    const/4 v4, 0x4

    .line 67
    iget-object v2, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mWifiSignalsDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 70
    invoke-static {p1, v4}, Lcom/parrot/freeflight/wifi/ARWifiHelper;->calculateSignalLevel(II)I

    move-result v1

    .line 72
    .local v1, "level":I
    iget v2, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mRssiLevel:I

    if-eq v2, v1, :cond_2

    .line 73
    iput v1, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mRssiLevel:I

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 76
    iget-object v2, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mWifiSignalsDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    if-ltz v1, :cond_1

    if-ge v1, v4, :cond_1

    .line 80
    iget-object v2, p0, Lcom/parrot/freeflight/home/widget/WifiSignalView;->mWifiSignalsDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/widget/WifiSignalView;->invalidate()V

    .line 86
    .end local v0    # "i":I
    .end local v1    # "level":I
    :cond_2
    return-void
.end method
