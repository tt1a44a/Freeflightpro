.class public final Lcom/bumptech/glide/request/SingleRequest;
.super Ljava/lang/Object;
.source "SingleRequest.java"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;
.implements Lcom/bumptech/glide/request/ResourceCallback;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/SingleRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/Request;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
        "Lcom/bumptech/glide/request/ResourceCallback;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final GLIDE_TAG:Ljava/lang/String; = "Glide"

.field private static final IS_VERBOSE_LOGGABLE:Z

.field private static final POOL:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/request/SingleRequest",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Request"


# instance fields
.field private animationFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/TransitionFactory",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private engine:Lcom/bumptech/glide/load/engine/Engine;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private glideContext:Lcom/bumptech/glide/GlideContext;

.field private height:I

.field private isCallingCallbacks:Z

.field private loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

.field private model:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private priority:Lcom/bumptech/glide/Priority;

.field private requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

.field private requestListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/RequestListener",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field private requestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;"
        }
    .end annotation
.end field

.field private startTime:J

.field private final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

.field private status:Lcom/bumptech/glide/request/SingleRequest$Status;

.field private final tag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private target:Lcom/bumptech/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;"
        }
    .end annotation
.end field

.field private targetListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener",
            "<TR;>;"
        }
    .end annotation
.end field

.field private transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const/16 v0, 0x96

    new-instance v1, Lcom/bumptech/glide/request/SingleRequest$1;

    invoke-direct {v1}, Lcom/bumptech/glide/request/SingleRequest$1;-><init>()V

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/pool/FactoryPools;->simple(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest;->POOL:Landroid/support/v4/util/Pools$Pool;

    .line 52
    const-string v0, "Request"

    const/4 v1, 0x2

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    .line 52
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->tag:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 154
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private assertNotCallingCallbacks()V
    .locals 2

    .prologue
    .line 289
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-boolean v0, p0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    return-void
.end method

.method private canNotifyCleared()Z
    .locals 1

    .prologue
    .line 472
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyCleared(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canNotifyStatusChanged()Z
    .locals 1

    .prologue
    .line 476
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canSetResource()Z
    .locals 1

    .prologue
    .line 468
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 278
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->assertNotCallingCallbacks()V

    .line 279
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 280
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/target/Target;->removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 281
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cancel()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 285
    :cond_0
    return-void
.end method

.method private getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 356
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->getErrorPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 358
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->getErrorId()I

    move-result v0

    if-lez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->getErrorId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 376
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 378
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->getFallbackId()I

    move-result v0

    if-lez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->getFallbackId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 366
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 368
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->getPlaceholderId()I

    move-result v0

    if-lez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->getPlaceholderId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/RequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/List;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "glideContext"    # Lcom/bumptech/glide/GlideContext;
    .param p3, "model"    # Ljava/lang/Object;
    .param p5, "requestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
    .param p6, "overrideWidth"    # I
    .param p7, "overrideHeight"    # I
    .param p8, "priority"    # Lcom/bumptech/glide/Priority;
    .param p11    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "requestCoordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;
    .param p13, "engine"    # Lcom/bumptech/glide/load/engine/Engine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/request/RequestOptions;",
            "II",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;",
            "Lcom/bumptech/glide/request/RequestListener",
            "<TR;>;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/RequestListener",
            "<TR;>;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/request/transition/TransitionFactory",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    .local p4, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p9, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    .local p10, "targetListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TR;>;"
    .local p11, "requestListeners":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/request/RequestListener<TR;>;>;"
    .local p14, "animationFactory":Lcom/bumptech/glide/request/transition/TransitionFactory;, "Lcom/bumptech/glide/request/transition/TransitionFactory<-TR;>;"
    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->context:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 173
    iput-object p3, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    .line 174
    iput-object p4, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    .line 175
    iput-object p5, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 176
    iput p6, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    .line 177
    iput p7, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    .line 178
    iput-object p8, p0, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    .line 179
    iput-object p9, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 180
    iput-object p10, p0, Lcom/bumptech/glide/request/SingleRequest;->targetListener:Lcom/bumptech/glide/request/RequestListener;

    .line 181
    iput-object p11, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    .line 182
    iput-object p12, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 183
    iput-object p13, p0, Lcom/bumptech/glide/request/SingleRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 184
    iput-object p14, p0, Lcom/bumptech/glide/request/SingleRequest;->animationFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;

    .line 185
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->PENDING:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 186
    return-void
.end method

.method private isFirstReadyResource()Z
    .locals 1

    .prologue
    .line 480
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static listenerCountEquals(Lcom/bumptech/glide/request/SingleRequest;Lcom/bumptech/glide/request/SingleRequest;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/SingleRequest",
            "<*>;",
            "Lcom/bumptech/glide/request/SingleRequest",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "first":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<*>;"
    .local p1, "second":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<*>;"
    const/4 v2, 0x0

    .line 641
    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-nez v3, :cond_1

    move v0, v2

    .line 642
    .local v0, "firstListenerCount":I
    :goto_0
    iget-object v3, p1, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-nez v3, :cond_2

    move v1, v2

    .line 643
    .local v1, "secondListenerCount":I
    :goto_1
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 641
    .end local v0    # "firstListenerCount":I
    .end local v1    # "secondListenerCount":I
    :cond_1
    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 642
    .restart local v0    # "firstListenerCount":I
    :cond_2
    iget-object v3, p1, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1
.end method

.method private loadDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 386
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 388
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-static {v1, p1, v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;->getDrawable(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 387
    .end local v0    # "theme":Landroid/content/res/Resources$Theme;
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method private logV(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 647
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    const-string v0, "Request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method private static maybeApplySizeMultiplier(IF)I
    .locals 1
    .param p0, "size"    # I
    .param p1, "sizeMultiplier"    # F

    .prologue
    .line 464
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .end local p0    # "size":I
    :goto_0
    return p0

    .restart local p0    # "size":I
    :cond_0
    int-to-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0
.end method

.method private notifyLoadFailed()V
    .locals 1

    .prologue
    .line 490
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestFailed(Lcom/bumptech/glide/request/Request;)V

    .line 493
    :cond_0
    return-void
.end method

.method private notifyLoadSuccess()V
    .locals 1

    .prologue
    .line 484
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    .line 487
    :cond_0
    return-void
.end method

.method public static obtain(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/RequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/List;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/request/SingleRequest;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "glideContext"    # Lcom/bumptech/glide/GlideContext;
    .param p2, "model"    # Ljava/lang/Object;
    .param p4, "requestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
    .param p5, "overrideWidth"    # I
    .param p6, "overrideHeight"    # I
    .param p7, "priority"    # Lcom/bumptech/glide/Priority;
    .param p10    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "requestCoordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;
    .param p12, "engine"    # Lcom/bumptech/glide/load/engine/Engine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/request/RequestOptions;",
            "II",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;",
            "Lcom/bumptech/glide/request/RequestListener",
            "<TR;>;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/RequestListener",
            "<TR;>;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/request/transition/TransitionFactory",
            "<-TR;>;)",
            "Lcom/bumptech/glide/request/SingleRequest",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p8, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    .local p9, "targetListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TR;>;"
    .local p10, "requestListeners":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/request/RequestListener<TR;>;>;"
    .local p13, "animationFactory":Lcom/bumptech/glide/request/transition/TransitionFactory;, "Lcom/bumptech/glide/request/transition/TransitionFactory<-TR;>;"
    sget-object v1, Lcom/bumptech/glide/request/SingleRequest;->POOL:Landroid/support/v4/util/Pools$Pool;

    .line 128
    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/SingleRequest;

    .line 129
    .local v0, "request":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/bumptech/glide/request/SingleRequest;

    .end local v0    # "request":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    invoke-direct {v0}, Lcom/bumptech/glide/request/SingleRequest;-><init>()V

    .restart local v0    # "request":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    :cond_0
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 132
    invoke-direct/range {v0 .. v14}, Lcom/bumptech/glide/request/SingleRequest;->init(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/RequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/List;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;)V

    .line 147
    return-object v0
.end method

.method private onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 9
    .param p1, "e"    # Lcom/bumptech/glide/load/engine/GlideException;
    .param p2, "maxLogLevel"    # I

    .prologue
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 586
    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v5}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 587
    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v5}, Lcom/bumptech/glide/GlideContext;->getLogLevel()I

    move-result v2

    .line 588
    .local v2, "logLevel":I
    if-gt v2, p2, :cond_0

    .line 589
    const-string v5, "Glide"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Load failed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with size ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    const/4 v5, 0x4

    if-gt v2, v5, :cond_0

    .line 591
    const-string v5, "Glide"

    invoke-virtual {p1, v5}, Lcom/bumptech/glide/load/engine/GlideException;->logRootCauses(Ljava/lang/String;)V

    .line 595
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 596
    sget-object v5, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 598
    iput-boolean v3, p0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "anyListenerHandledUpdatingTarget":Z
    :try_start_0
    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 603
    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestListener;

    .line 604
    .local v1, "listener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TR;>;"
    iget-object v6, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v7, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 605
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->isFirstReadyResource()Z

    move-result v8

    invoke-interface {v1, p1, v6, v7, v8}, Lcom/bumptech/glide/request/RequestListener;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 606
    goto :goto_0

    .line 608
    .end local v1    # "listener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TR;>;"
    :cond_1
    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->targetListener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->targetListener:Lcom/bumptech/glide/request/RequestListener;

    iget-object v6, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v7, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 610
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->isFirstReadyResource()Z

    move-result v8

    invoke-interface {v5, p1, v6, v7, v8}, Lcom/bumptech/glide/request/RequestListener;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    or-int/2addr v0, v3

    .line 612
    if-nez v0, :cond_2

    .line 613
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->setErrorPlaceholder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    :cond_2
    iput-boolean v4, p0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z

    .line 619
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->notifyLoadFailed()V

    .line 620
    return-void

    :cond_3
    move v3, v4

    .line 610
    goto :goto_1

    .line 616
    :catchall_0
    move-exception v3

    iput-boolean v4, p0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z

    throw v3
.end method

.method private onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)V
    .locals 16
    .param p3, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;TR;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 542
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    .local p2, "result":Ljava/lang/Object;, "TR;"
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/request/SingleRequest;->isFirstReadyResource()Z

    move-result v7

    .line 543
    .local v7, "isFirstResource":Z
    sget-object v3, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 544
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v3}, Lcom/bumptech/glide/GlideContext;->getLogLevel()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    .line 547
    const-string v3, "Glide"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished loading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with size ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    .line 549
    invoke-static {v8, v9}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 547
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z

    .line 554
    const/4 v15, 0x0

    .line 555
    .local v15, "anyListenerHandledUpdatingTarget":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 556
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestListener;

    .line 557
    .local v2, "listener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TR;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    .line 558
    invoke-interface/range {v2 .. v7}, Lcom/bumptech/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result v3

    or-int/2addr v15, v3

    .line 559
    goto :goto_0

    .line 561
    .end local v2    # "listener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TR;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->targetListener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/request/SingleRequest;->targetListener:Lcom/bumptech/glide/request/RequestListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    move-object/from16 v9, p2

    move-object/from16 v12, p3

    move v13, v7

    .line 563
    invoke-interface/range {v8 .. v13}, Lcom/bumptech/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    or-int/2addr v15, v3

    .line 565
    if-nez v15, :cond_2

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->animationFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;

    .line 567
    move-object/from16 v0, p3

    invoke-interface {v3, v0, v7}, Lcom/bumptech/glide/request/transition/TransitionFactory;->build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;

    move-result-object v14

    .line 568
    .local v14, "animation":Lcom/bumptech/glide/request/transition/Transition;, "Lcom/bumptech/glide/request/transition/Transition<-TR;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v14}, Lcom/bumptech/glide/request/target/Target;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    .end local v14    # "animation":Lcom/bumptech/glide/request/transition/Transition;, "Lcom/bumptech/glide/request/transition/Transition<-TR;>;"
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z

    .line 574
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/request/SingleRequest;->notifyLoadSuccess()V

    .line 575
    return-void

    .line 563
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 571
    :catchall_0
    move-exception v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/bumptech/glide/request/SingleRequest;->isCallingCallbacks:Z

    throw v3
.end method

.method private releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/Engine;->release(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 328
    return-void
.end method

.method private setErrorPlaceholder()V
    .locals 2

    .prologue
    .line 392
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->canNotifyStatusChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    :goto_0
    return-void

    .line 396
    :cond_0
    const/4 v0, 0x0

    .line 397
    .local v0, "error":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 398
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 401
    :cond_1
    if-nez v0, :cond_2

    .line 402
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getErrorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 405
    :cond_2
    if-nez v0, :cond_3

    .line 406
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 408
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/request/target/Target;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 4

    .prologue
    .line 220
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->assertNotCallingCallbacks()V

    .line 221
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v1}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 222
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    .line 223
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 224
    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    .line 226
    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x5

    .line 231
    .local v0, "logLevel":I
    :goto_0
    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v2, "Received null model"

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 267
    .end local v0    # "logLevel":I
    :cond_1
    :goto_1
    return-void

    .line 230
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 235
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_4

    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_4
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_5

    .line 246
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {p0, v1, v2}, Lcom/bumptech/glide/request/SingleRequest;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    goto :goto_1

    .line 253
    :cond_5
    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 254
    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 255
    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/bumptech/glide/request/SingleRequest;->onSizeReady(II)V

    .line 260
    :goto_2
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_7

    .line 261
    :cond_6
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->canNotifyStatusChanged()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 262
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/request/target/Target;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_7
    sget-boolean v1, Lcom/bumptech/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v1, :cond_1

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished run method in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_8
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v1, p0}, Lcom/bumptech/glide/request/target/Target;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 307
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 308
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->assertNotCallingCallbacks()V

    .line 309
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 310
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->cancel()V

    .line 315
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 318
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->canNotifyCleared()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/Target;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :cond_2
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    goto :goto_0
.end method

.method public getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method public isCleared()Z
    .locals 2

    .prologue
    .line 347
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 337
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z
    .locals 4
    .param p1, "o"    # Lcom/bumptech/glide/request/Request;

    .prologue
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    const/4 v1, 0x0

    .line 624
    instance-of v2, p1, Lcom/bumptech/glide/request/SingleRequest;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 625
    check-cast v0, Lcom/bumptech/glide/request/SingleRequest;

    .line 626
    .local v0, "that":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<*>;"
    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    iget v3, v0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    iget v3, v0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    .line 628
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Util;->bothModelsNullEquivalentOrEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    .line 629
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 630
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    if-ne v2, v3, :cond_0

    .line 635
    invoke-static {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->listenerCountEquals(Lcom/bumptech/glide/request/SingleRequest;Lcom/bumptech/glide/request/SingleRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 637
    .end local v0    # "that":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<*>;"
    :cond_0
    return v1
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 352
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResourceSet()Z
    .locals 1

    .prologue
    .line 342
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->isComplete()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 332
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1
    .param p1, "e"    # Lcom/bumptech/glide/load/engine/GlideException;

    .prologue
    .line 582
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/SingleRequest;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 583
    return-void
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V
    .locals 4
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v2}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 502
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 503
    if-nez p1, :cond_0

    .line 504
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inside, but instead got null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "exception":Lcom/bumptech/glide/load/engine/GlideException;
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 531
    .end local v0    # "exception":Lcom/bumptech/glide/load/engine/GlideException;
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    .line 511
    .local v1, "received":Ljava/lang/Object;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 512
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 513
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but instead got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 515
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "} inside Resource{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 517
    if-eqz v1, :cond_3

    const-string v2, ""

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 519
    .restart local v0    # "exception":Lcom/bumptech/glide/load/engine/GlideException;
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_0

    .line 515
    .end local v0    # "exception":Lcom/bumptech/glide/load/engine/GlideException;
    :cond_2
    const-string v2, ""

    goto :goto_1

    .line 517
    :cond_3
    const-string v2, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_2

    .line 523
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->canSetResource()Z

    move-result v2

    if-nez v2, :cond_5

    .line 524
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 526
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    goto :goto_0

    .line 530
    :cond_5
    invoke-direct {p0, p1, v1, p2}, Lcom/bumptech/glide/request/SingleRequest;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)V

    goto :goto_0
.end method

.method public onSizeReady(II)V
    .locals 22
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 416
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v2}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 417
    sget-boolean v2, Lcom/bumptech/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v2, :cond_0

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    .line 420
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v3, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v2, v3, :cond_2

    .line 461
    :cond_1
    :goto_0
    return-void

    .line 423
    :cond_2
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->getSizeMultiplier()F

    move-result v21

    .line 426
    .local v21, "sizeMultiplier":F
    move/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/SingleRequest;->maybeApplySizeMultiplier(IF)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    .line 427
    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/SingleRequest;->maybeApplySizeMultiplier(IF)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    .line 429
    sget-boolean v2, Lcom/bumptech/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v2, :cond_3

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finished setup for calling load in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    .line 432
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 435
    invoke-virtual {v5}, Lcom/bumptech/glide/request/RequestOptions;->getSignature()Lcom/bumptech/glide/load/Key;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 438
    invoke-virtual {v8}, Lcom/bumptech/glide/request/RequestOptions;->getResourceClass()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 441
    invoke-virtual {v11}, Lcom/bumptech/glide/request/RequestOptions;->getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 442
    invoke-virtual {v12}, Lcom/bumptech/glide/request/RequestOptions;->getTransformations()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 443
    invoke-virtual {v13}, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 444
    invoke-virtual {v14}, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 445
    invoke-virtual {v15}, Lcom/bumptech/glide/request/RequestOptions;->getOptions()Lcom/bumptech/glide/load/Options;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    move-object/from16 v16, v0

    .line 446
    invoke-virtual/range {v16 .. v16}, Lcom/bumptech/glide/request/RequestOptions;->isMemoryCacheable()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    move-object/from16 v17, v0

    .line 447
    invoke-virtual/range {v17 .. v17}, Lcom/bumptech/glide/request/RequestOptions;->getUseUnlimitedSourceGeneratorsPool()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    move-object/from16 v18, v0

    .line 448
    invoke-virtual/range {v18 .. v18}, Lcom/bumptech/glide/request/RequestOptions;->getUseAnimationPool()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    move-object/from16 v19, v0

    .line 449
    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/request/RequestOptions;->getOnlyRetrieveFromCache()Z

    move-result v19

    move-object/from16 v20, p0

    .line 432
    invoke-virtual/range {v2 .. v20}, Lcom/bumptech/glide/load/engine/Engine;->load(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/bumptech/glide/load/Options;ZZZZLcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v3, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v2, v3, :cond_4

    .line 456
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 458
    :cond_4
    sget-boolean v2, Lcom/bumptech/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v2, :cond_1

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finished onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/bumptech/glide/request/SingleRequest;, "Lcom/bumptech/glide/request/SingleRequest<TR;>;"
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->assertNotCallingCallbacks()V

    .line 197
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->context:Landroid/content/Context;

    .line 198
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 199
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    .line 200
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    .line 201
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 202
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    .line 203
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    .line 204
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 205
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    .line 206
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->targetListener:Lcom/bumptech/glide/request/RequestListener;

    .line 207
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 208
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->animationFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;

    .line 209
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 210
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 211
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 212
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    .line 214
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    .line 215
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest;->POOL:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method
