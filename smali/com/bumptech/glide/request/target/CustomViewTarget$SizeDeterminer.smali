.class final Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;
.super Ljava/lang/Object;
.source "CustomViewTarget.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/target/CustomViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeDeterminer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
    }
.end annotation


# static fields
.field private static final PENDING_SIZE:I

.field static maxDisplayLength:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final cbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private layoutListener:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final view:Landroid/view/View;

.field waitForLayout:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    .line 308
    iput-object p1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    .line 309
    return-void
.end method

.method private static getMaxDisplayLength(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 313
    sget-object v3, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->maxDisplayLength:Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 314
    const-string/jumbo v3, "window"

    .line 315
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 316
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-static {v2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 317
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 318
    .local v1, "displayDimensions":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 319
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->maxDisplayLength:Ljava/lang/Integer;

    .line 321
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displayDimensions":Landroid/graphics/Point;
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    sget-object v3, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->maxDisplayLength:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3
.end method

.method private getTargetDimen(III)I
    .locals 4
    .param p1, "viewSize"    # I
    .param p2, "paramSize"    # I
    .param p3, "paddingSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 417
    sub-int v0, p2, p3

    .line 418
    .local v0, "adjustedParamSize":I
    if-lez v0, :cond_0

    .line 467
    .end local v0    # "adjustedParamSize":I
    :goto_0
    return v0

    .line 425
    .restart local v0    # "adjustedParamSize":I
    :cond_0
    iget-boolean v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->waitForLayout:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 426
    goto :goto_0

    .line 436
    :cond_1
    sub-int v1, p1, p3

    .line 437
    .local v1, "adjustedViewSize":I
    if-lez v1, :cond_2

    move v0, v1

    .line 438
    goto :goto_0

    .line 452
    :cond_2
    iget-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, -0x2

    if-ne p2, v3, :cond_4

    .line 453
    const-string v2, "CustomViewTarget"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    const-string v2, "CustomViewTarget"

    const-string v3, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device\'s screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_3
    iget-object v2, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getMaxDisplayLength(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v2

    .line 467
    goto :goto_0
.end method

.method private getTargetHeight()I
    .locals 5

    .prologue
    .line 400
    iget-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int v2, v3, v4

    .line 401
    .local v2, "verticalPadding":I
    iget-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 402
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 403
    .local v0, "layoutParamSize":I
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v3, v0, v2}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getTargetDimen(III)I

    move-result v3

    return v3

    .line 402
    .end local v0    # "layoutParamSize":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTargetWidth()I
    .locals 5

    .prologue
    .line 407
    iget-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 408
    .local v0, "horizontalPadding":I
    iget-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 409
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 410
    .local v1, "layoutParamSize":I
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-direct {p0, v3, v1, v0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getTargetDimen(III)I

    move-result v3

    return v3

    .line 409
    .end local v1    # "layoutParamSize":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDimensionValid(I)Z
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 471
    if-gtz p1, :cond_0

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isViewStateAndSizeValid(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->isDimensionValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->isDimensionValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyCbs(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 329
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .line 330
    .local v0, "cb":Lcom/bumptech/glide/request/target/SizeReadyCallback;
    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    goto :goto_0

    .line 332
    .end local v0    # "cb":Lcom/bumptech/glide/request/target/SizeReadyCallback;
    :cond_0
    return-void
.end method


# virtual methods
.method checkCurrentDimens()V
    .locals 3

    .prologue
    .line 336
    iget-object v2, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getTargetWidth()I

    move-result v1

    .line 341
    .local v1, "currentWidth":I
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getTargetHeight()I

    move-result v0

    .line 342
    .local v0, "currentHeight":I
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->isViewStateAndSizeValid(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->notifyCbs(II)V

    .line 347
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->clearCallbacksAndListener()V

    goto :goto_0
.end method

.method clearCallbacksAndListener()V
    .locals 2

    .prologue
    .line 387
    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 388
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 391
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    .line 392
    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 393
    return-void
.end method

.method getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getTargetWidth()I

    move-result v1

    .line 352
    .local v1, "currentWidth":I
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getTargetHeight()I

    move-result v0

    .line 353
    .local v0, "currentHeight":I
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->isViewStateAndSizeValid(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    invoke-interface {p1, v1, v0}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 361
    iget-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_2
    iget-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    if-nez v3, :cond_0

    .line 364
    iget-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 365
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-direct {v3, p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;-><init>(Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;)V

    iput-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    .line 366
    iget-object v3, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method
