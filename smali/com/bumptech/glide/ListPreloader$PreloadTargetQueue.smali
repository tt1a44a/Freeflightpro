.class final Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;
.super Ljava/lang/Object;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreloadTargetQueue"
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/ListPreloader$PreloadTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    new-instance v2, Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    invoke-direct {v2}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 238
    iget-object v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    .line 239
    .local v0, "result":Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    iget-object v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 240
    iput p1, v0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoWidth:I

    .line 241
    iput p2, v0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoHeight:I

    .line 242
    return-object v0
.end method
