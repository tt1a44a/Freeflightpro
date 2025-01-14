.class public Lcom/bumptech/glide/GlideContext;
.super Landroid/content/ContextWrapper;
.source "GlideContext.java"


# static fields
.field static final DEFAULT_TRANSITION_OPTIONS:Lcom/bumptech/glide/TransitionOptions;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/TransitionOptions",
            "<**>;"
        }
    .end annotation
.end field


# instance fields
.field private final arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private final defaultTransitionOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/TransitionOptions",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final engine:Lcom/bumptech/glide/load/engine/Engine;

.field private final imageViewTargetFactory:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

.field private final logLevel:I

.field private final mainHandler:Landroid/os/Handler;

.field private final registry:Lcom/bumptech/glide/Registry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/bumptech/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/GenericTransitionOptions;-><init>()V

    sput-object v0, Lcom/bumptech/glide/GlideContext;->DEFAULT_TRANSITION_OPTIONS:Lcom/bumptech/glide/TransitionOptions;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/request/target/ImageViewTargetFactory;Lcom/bumptech/glide/request/RequestOptions;Ljava/util/Map;Lcom/bumptech/glide/load/engine/Engine;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "registry"    # Lcom/bumptech/glide/Registry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "imageViewTargetFactory"    # Lcom/bumptech/glide/request/target/ImageViewTargetFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "defaultRequestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "engine"    # Lcom/bumptech/glide/load/engine/Engine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "logLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Lcom/bumptech/glide/Registry;",
            "Lcom/bumptech/glide/request/target/ImageViewTargetFactory;",
            "Lcom/bumptech/glide/request/RequestOptions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/TransitionOptions",
            "<**>;>;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p6, "defaultTransitionOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/bumptech/glide/TransitionOptions<**>;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/bumptech/glide/GlideContext;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 46
    iput-object p3, p0, Lcom/bumptech/glide/GlideContext;->registry:Lcom/bumptech/glide/Registry;

    .line 47
    iput-object p4, p0, Lcom/bumptech/glide/GlideContext;->imageViewTargetFactory:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    .line 48
    iput-object p5, p0, Lcom/bumptech/glide/GlideContext;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 49
    iput-object p6, p0, Lcom/bumptech/glide/GlideContext;->defaultTransitionOptions:Ljava/util/Map;

    .line 50
    iput-object p7, p0, Lcom/bumptech/glide/GlideContext;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 51
    iput p8, p0, Lcom/bumptech/glide/GlideContext;->logLevel:I

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideContext;->mainHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method


# virtual methods
.method public buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/ViewTarget;
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class",
            "<TX;>;)",
            "Lcom/bumptech/glide/request/target/ViewTarget",
            "<",
            "Landroid/widget/ImageView;",
            "TX;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->imageViewTargetFactory:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;->buildTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object v0

    return-object v0
.end method

.method public getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-object v0
.end method

.method public getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/bumptech/glide/TransitionOptions;
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/TransitionOptions",
            "<*TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lcom/bumptech/glide/GlideContext;->defaultTransitionOptions:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/TransitionOptions;

    .line 64
    .local v0, "result":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<**>;"
    if-nez v0, :cond_1

    .line 65
    iget-object v2, p0, Lcom/bumptech/glide/GlideContext;->defaultTransitionOptions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    .local v1, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/bumptech/glide/TransitionOptions<**>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<**>;"
    check-cast v0, Lcom/bumptech/glide/TransitionOptions;

    .restart local v0    # "result":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<**>;"
    goto :goto_0

    .line 71
    .end local v1    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/bumptech/glide/TransitionOptions<**>;>;"
    :cond_1
    if-nez v0, :cond_2

    .line 72
    sget-object v0, Lcom/bumptech/glide/GlideContext;->DEFAULT_TRANSITION_OPTIONS:Lcom/bumptech/glide/TransitionOptions;

    .line 74
    :cond_2
    return-object v0
.end method

.method public getEngine()Lcom/bumptech/glide/load/engine/Engine;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->engine:Lcom/bumptech/glide/load/engine/Engine;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/bumptech/glide/GlideContext;->logLevel:I

    return v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRegistry()Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->registry:Lcom/bumptech/glide/Registry;

    return-object v0
.end method
