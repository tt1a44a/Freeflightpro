.class Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MomentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v7, 0x1

    .line 296
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 297
    if-ne p2, v7, :cond_2

    .line 298
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$2400(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 299
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v5}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$000(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/VideoView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$2502(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Z)Z

    .line 301
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$600(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v5}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$2300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1000(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 318
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4, p2}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$2402(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;I)I

    .line 319
    return-void

    .line 303
    :cond_2
    if-nez p2, :cond_1

    .line 304
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$500(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 305
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v3

    .line 306
    .local v3, "totalScrollWidth":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v2

    .line 307
    .local v2, "scrolledPosition":I
    int-to-float v4, v2

    int-to-float v5, v3

    div-float v1, v4, v5

    .line 308
    .local v1, "percent":F
    int-to-float v4, v2

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v5}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 309
    int-to-float v4, v2

    int-to-float v5, v3

    div-float v1, v4, v5

    .line 310
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$100(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 311
    .local v0, "currentMs":I
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$000(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/VideoView;

    move-result-object v4

    add-int/lit8 v5, v0, -0x64

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->seekTo(I)V

    .line 312
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$900(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/SeekBar;

    move-result-object v4

    int-to-float v5, v0

    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$100(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 314
    .end local v0    # "currentMs":I
    .end local v1    # "percent":F
    .end local v2    # "scrolledPosition":I
    .end local v3    # "totalScrollWidth":I
    :cond_3
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$2500(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 315
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1000(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 323
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$2400(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    if-gez p2, :cond_2

    .line 325
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4, v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$502(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Z)Z

    .line 326
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4, v5}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$402(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Z)Z

    .line 331
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v3

    .line 332
    .local v3, "totalScrollWidth":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v2

    .line 333
    .local v2, "scrolledPosition":I
    int-to-float v4, v2

    int-to-float v5, v3

    div-float v1, v4, v5

    .line 334
    .local v1, "percent":F
    int-to-float v4, v2

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v5}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 335
    int-to-float v4, v2

    int-to-float v5, v3

    div-float v1, v4, v5

    .line 336
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$100(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 337
    .local v0, "currentMs":I
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$000(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 338
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$900(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/SeekBar;

    move-result-object v4

    int-to-float v5, v0

    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$100(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 340
    .end local v0    # "currentMs":I
    .end local v1    # "percent":F
    .end local v2    # "scrolledPosition":I
    .end local v3    # "totalScrollWidth":I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 341
    return-void

    .line 327
    :cond_2
    if-lez p2, :cond_0

    .line 328
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4, v5}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$502(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Z)Z

    .line 329
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v4, v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$402(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Z)Z

    goto :goto_0
.end method
