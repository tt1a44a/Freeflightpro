.class public Lcom/parrot/freeflight/map/RadarMapView;
.super Landroid/widget/RelativeLayout;
.source "RadarMapView.java"


# instance fields
.field private mCircularMapView:Lcom/parrot/freeflight/map/CircularMapView;

.field private mCompassView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    return-void
.end method

.method private hideCompass()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/map/RadarMapView;->mCompassView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    return-void
.end method

.method private showCompass()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/map/RadarMapView;->mCompassView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    return-void
.end method


# virtual methods
.method public compassHeading(F)V
    .locals 2
    .param p1, "heading"    # F

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/map/RadarMapView;->mCompassView:Landroid/widget/ImageView;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 83
    return-void
.end method

.method public fullScreen()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 39
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/RadarMapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/RadarMapView;->requestLayout()V

    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/map/RadarMapView;->mCircularMapView:Lcom/parrot/freeflight/map/CircularMapView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/CircularMapView;->fullScreen()V

    .line 42
    invoke-direct {p0}, Lcom/parrot/freeflight/map/RadarMapView;->hideCompass()V

    .line 43
    return-void
.end method

.method public mini()V
    .locals 5

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/RadarMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060230

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 47
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/RadarMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06022f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 48
    .local v1, "marginBottom":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 52
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/RadarMapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/RadarMapView;->requestLayout()V

    .line 54
    iget-object v3, p0, Lcom/parrot/freeflight/map/RadarMapView;->mCircularMapView:Lcom/parrot/freeflight/map/CircularMapView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/map/CircularMapView;->mini()V

    .line 55
    invoke-direct {p0}, Lcom/parrot/freeflight/map/RadarMapView;->showCompass()V

    .line 56
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 34
    const v0, 0x7f0a01a3

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/RadarMapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/map/RadarMapView;->mCompassView:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f0a01a2

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/RadarMapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/map/CircularMapView;

    iput-object v0, p0, Lcom/parrot/freeflight/map/RadarMapView;->mCircularMapView:Lcom/parrot/freeflight/map/CircularMapView;

    .line 36
    return-void
.end method

.method public tiny()V
    .locals 6

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/RadarMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060233

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 60
    .local v3, "size":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/RadarMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060232

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 61
    .local v1, "marginBottom":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/RadarMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060155

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 62
    .local v2, "marginLeft":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 64
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 65
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 66
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 67
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/RadarMapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/RadarMapView;->requestLayout()V

    .line 69
    iget-object v4, p0, Lcom/parrot/freeflight/map/RadarMapView;->mCircularMapView:Lcom/parrot/freeflight/map/CircularMapView;

    invoke-virtual {v4}, Lcom/parrot/freeflight/map/CircularMapView;->tiny()V

    .line 70
    invoke-direct {p0}, Lcom/parrot/freeflight/map/RadarMapView;->hideCompass()V

    .line 71
    return-void
.end method
