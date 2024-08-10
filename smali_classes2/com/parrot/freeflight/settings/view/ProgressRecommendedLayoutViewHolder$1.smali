.class Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;
.super Ljava/lang/Object;
.source "ProgressRecommendedLayoutViewHolder.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

.field final synthetic val$max:D

.field final synthetic val$min:D


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;DD)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    .prologue
    .line 77
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    iput-wide p2, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->val$min:D

    iput-wide p4, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->val$max:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    .prologue
    .line 80
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;"
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    iget-object v4, v4, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/widget/Slider;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 81
    .local v3, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 82
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;)F

    move-result v4

    float-to-double v4, v4

    iget-wide v6, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->val$min:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->val$max:D

    iget-wide v8, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->val$min:D

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v0, v4

    .line 83
    .local v0, "percent":F
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    iget-object v4, v4, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/widget/Slider;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    invoke-static {v5}, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;)I

    move-result v5

    int-to-float v5, v5

    add-float v1, v4, v5

    .line 84
    .local v1, "sliderPosition":F
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    iget-object v4, v4, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/widget/Slider;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    invoke-static {v5}, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 85
    .local v2, "sliderWidth":F
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->access$300(Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;)Landroid/view/View;

    move-result-object v4

    sub-float v5, v2, v1

    mul-float/2addr v5, v0

    add-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    .line 86
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;->access$300(Lcom/parrot/freeflight/settings/view/ProgressRecommendedLayoutViewHolder;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 87
    return-void
.end method
