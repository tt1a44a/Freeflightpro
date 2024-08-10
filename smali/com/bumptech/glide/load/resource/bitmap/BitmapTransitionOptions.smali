.class public final Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
.super Lcom/bumptech/glide/TransitionOptions;
.source "BitmapTransitionOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/TransitionOptions",
        "<",
        "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/bumptech/glide/TransitionOptions;-><init>()V

    return-void
.end method

.method public static with(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/TransitionFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "transitionFactory":Lcom/bumptech/glide/request/transition/TransitionFactory;, "Lcom/bumptech/glide/request/transition/TransitionFactory<Landroid/graphics/Bitmap;>;"
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    return-object v0
.end method

.method public static withCrossFade()Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade()Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static withCrossFade(I)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p0, "duration"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(I)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static withCrossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p0, "builder"    # Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static withCrossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p0, "drawableCrossFadeFactory"    # Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static withWrapped(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/TransitionFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "drawableCrossFadeFactory":Lcom/bumptech/glide/request/transition/TransitionFactory;, "Lcom/bumptech/glide/request/transition/TransitionFactory<Landroid/graphics/drawable/Drawable;>;"
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->transitionUsing(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public crossFade()Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public crossFade(I)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p1, "duration"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p1, "builder"    # Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->build()Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->transitionUsing(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p1, "drawableCrossFadeFactory"    # Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->transitionUsing(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public transitionUsing(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/transition/TransitionFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "drawableCrossFadeFactory":Lcom/bumptech/glide/request/transition/TransitionFactory;, "Lcom/bumptech/glide/request/transition/TransitionFactory<Landroid/graphics/drawable/Drawable;>;"
    new-instance v0, Lcom/bumptech/glide/request/transition/BitmapTransitionFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/BitmapTransitionFactory;-><init>(Lcom/bumptech/glide/request/transition/TransitionFactory;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    return-object v0
.end method
