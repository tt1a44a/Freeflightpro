.class public Lcom/bumptech/glide/Registry;
.super Ljava/lang/Object;
.source "Registry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/Registry$NoImageHeaderParserException;,
        Lcom/bumptech/glide/Registry$MissingComponentException;,
        Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;
    }
.end annotation


# static fields
.field private static final BUCKET_APPEND_ALL:Ljava/lang/String; = "legacy_append"

.field public static final BUCKET_BITMAP:Ljava/lang/String; = "Bitmap"

.field public static final BUCKET_BITMAP_DRAWABLE:Ljava/lang/String; = "BitmapDrawable"

.field public static final BUCKET_GIF:Ljava/lang/String; = "Gif"

.field private static final BUCKET_PREPEND_ALL:Ljava/lang/String; = "legacy_prepend_all"


# instance fields
.field private final dataRewinderRegistry:Lcom/bumptech/glide/load/data/DataRewinderRegistry;

.field private final decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

.field private final encoderRegistry:Lcom/bumptech/glide/provider/EncoderRegistry;

.field private final imageHeaderParserRegistry:Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;

.field private final loadPathCache:Lcom/bumptech/glide/provider/LoadPathCache;

.field private final modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

.field private final modelToResourceClassCache:Lcom/bumptech/glide/provider/ModelToResourceClassCache;

.field private final resourceEncoderRegistry:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

.field private final throwableListPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/ModelToResourceClassCache;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->modelToResourceClassCache:Lcom/bumptech/glide/provider/ModelToResourceClassCache;

    .line 56
    new-instance v0, Lcom/bumptech/glide/provider/LoadPathCache;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/LoadPathCache;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->loadPathCache:Lcom/bumptech/glide/provider/LoadPathCache;

    .line 57
    invoke-static {}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafeList()Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->throwableListPool:Landroid/support/v4/util/Pools$Pool;

    .line 60
    new-instance v0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    iget-object v1, p0, Lcom/bumptech/glide/Registry;->throwableListPool:Landroid/support/v4/util/Pools$Pool;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;-><init>(Landroid/support/v4/util/Pools$Pool;)V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    .line 61
    new-instance v0, Lcom/bumptech/glide/provider/EncoderRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/EncoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->encoderRegistry:Lcom/bumptech/glide/provider/EncoderRegistry;

    .line 62
    new-instance v0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    .line 63
    new-instance v0, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->resourceEncoderRegistry:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    .line 64
    new-instance v0, Lcom/bumptech/glide/load/data/DataRewinderRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/DataRewinderRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->dataRewinderRegistry:Lcom/bumptech/glide/load/data/DataRewinderRegistry;

    .line 65
    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 66
    new-instance v0, Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->imageHeaderParserRegistry:Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Gif"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Bitmap"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BitmapDrawable"

    aput-object v2, v0, v1

    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/Registry;->setResourceDecoderBucketPriorityList(Ljava/util/List;)Lcom/bumptech/glide/Registry;

    .line 69
    return-void
.end method

.method private getDecodePaths(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/engine/DecodePath",
            "<TData;TTResource;TTranscode;>;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p3, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v7, "decodePaths":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/engine/DecodePath<TData;TTResource;TTranscode;>;>;"
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    .line 502
    invoke-virtual {v1, p1, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    .line 504
    .local v8, "registeredResourceClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TTResource;>;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 505
    .local v2, "registeredResourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 506
    invoke-virtual {v1, v2, p3}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->getTranscodeClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 508
    .local v9, "registeredTranscodeClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TTranscode;>;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 510
    .local v3, "registeredTranscodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    .line 511
    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->getDecoders(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 512
    .local v4, "decoders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TData;TTResource;>;>;"
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 513
    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v5

    .line 515
    .local v5, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TTResource;TTranscode;>;"
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodePath;

    iget-object v6, p0, Lcom/bumptech/glide/Registry;->throwableListPool:Landroid/support/v4/util/Pools$Pool;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/engine/DecodePath;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Landroid/support/v4/util/Pools$Pool;)V

    .line 518
    .local v0, "path":Lcom/bumptech/glide/load/engine/DecodePath;, "Lcom/bumptech/glide/load/engine/DecodePath<TData;TTResource;TTranscode;>;"
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    .end local v0    # "path":Lcom/bumptech/glide/load/engine/DecodePath;, "Lcom/bumptech/glide/load/engine/DecodePath<TData;TTResource;TTranscode;>;"
    .end local v2    # "registeredResourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .end local v3    # "registeredTranscodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    .end local v4    # "decoders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TData;TTResource;>;>;"
    .end local v5    # "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TTResource;TTranscode;>;"
    .end local v9    # "registeredTranscodeClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TTranscode;>;>;"
    :cond_1
    return-object v7
.end method


# virtual methods
.method public append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Encoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/Encoder",
            "<TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->encoderRegistry:Lcom/bumptech/glide/provider/EncoderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/provider/EncoderRegistry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V

    .line 110
    return-object p0
.end method

.method public append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/ResourceEncoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TTResource;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->resourceEncoderRegistry:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 318
    return-object p0
.end method

.method public append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/ResourceDecoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p3, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TData;TTResource;>;"
    const-string v0, "legacy_append"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    .line 156
    return-object p0
.end method

.method public append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/model/ModelLoaderFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TModel;TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TModel;TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 405
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1, "bucket"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/ResourceDecoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p4, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TData;TTResource;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->append(Ljava/lang/String;Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 187
    return-object p0
.end method

.method public getImageHeaderParsers()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->imageHeaderParserRegistry:Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;

    invoke-virtual {v1}, Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;->getParsers()Ljava/util/List;

    move-result-object v0

    .line 592
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    new-instance v1, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;

    invoke-direct {v1}, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;-><init>()V

    throw v1

    .line 595
    :cond_0
    return-object v0
.end method

.method public getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;
    .locals 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Lcom/bumptech/glide/load/engine/LoadPath",
            "<TData;TTResource;TTranscode;>;"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p3, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->loadPathCache:Lcom/bumptech/glide/provider/LoadPathCache;

    .line 476
    invoke-virtual {v1, p1, p2, p3}, Lcom/bumptech/glide/provider/LoadPathCache;->get(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;

    move-result-object v0

    .line 477
    .local v0, "result":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TTResource;TTranscode;>;"
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->loadPathCache:Lcom/bumptech/glide/provider/LoadPathCache;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/provider/LoadPathCache;->isEmptyLoadPath(Lcom/bumptech/glide/load/engine/LoadPath;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    const/4 v1, 0x0

    .line 493
    :goto_0
    return-object v1

    .line 479
    :cond_0
    if-nez v0, :cond_1

    .line 481
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/Registry;->getDecodePaths(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 484
    .local v4, "decodePaths":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/engine/DecodePath<TData;TTResource;TTranscode;>;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 485
    const/4 v0, 0x0

    .line 491
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->loadPathCache:Lcom/bumptech/glide/provider/LoadPathCache;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/bumptech/glide/provider/LoadPathCache;->put(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/engine/LoadPath;)V

    .end local v4    # "decodePaths":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/engine/DecodePath<TData;TTResource;TTranscode;>;>;"
    :cond_1
    move-object v1, v0

    .line 493
    goto :goto_0

    .line 487
    .restart local v4    # "decodePaths":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/engine/DecodePath<TData;TTResource;TTranscode;>;>;"
    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/engine/LoadPath;

    .end local v0    # "result":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TTResource;TTranscode;>;"
    iget-object v5, p0, Lcom/bumptech/glide/Registry;->throwableListPool:Landroid/support/v4/util/Pools$Pool;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/LoadPath;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V

    .restart local v0    # "result":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TTResource;TTranscode;>;"
    goto :goto_1
.end method

.method public getModelLoaders(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModel;*>;>;"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "model":Ljava/lang/Object;, "TModel;"
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 583
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TModel;*>;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    new-instance v1, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 586
    :cond_0
    return-object v0
.end method

.method public getRegisteredResourceClasses(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 9
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p3, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    iget-object v6, p0, Lcom/bumptech/glide/Registry;->modelToResourceClassCache:Lcom/bumptech/glide/provider/ModelToResourceClassCache;

    invoke-virtual {v6, p1, p2}, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->get(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 530
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v5, :cond_3

    .line 531
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .restart local v5    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iget-object v6, p0, Lcom/bumptech/glide/Registry;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v6, p1}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->getDataClasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 533
    .local v1, "dataClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 534
    .local v0, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lcom/bumptech/glide/Registry;->decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    .line 535
    invoke-virtual {v7, v0, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 536
    .local v3, "registeredResourceClasses":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Class<*>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 537
    .local v2, "registeredResourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/bumptech/glide/Registry;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 538
    invoke-virtual {v8, v2, p3}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->getTranscodeClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 539
    .local v4, "registeredTranscodeClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TTranscode;>;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 540
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    .end local v0    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "registeredResourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "registeredResourceClasses":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Class<*>;>;"
    .end local v4    # "registeredTranscodeClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TTranscode;>;>;"
    :cond_2
    iget-object v6, p0, Lcom/bumptech/glide/Registry;->modelToResourceClassCache:Lcom/bumptech/glide/provider/ModelToResourceClassCache;

    .line 545
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 544
    invoke-virtual {v6, p1, p2, v7}, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->put(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    .line 548
    .end local v1    # "dataClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_3
    return-object v5
.end method

.method public getResultEncoder(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 3
    .param p1    # Lcom/bumptech/glide/load/engine/Resource;
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
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TX;>;)",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TX;>;"
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->resourceEncoderRegistry:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->get(Ljava/lang/Class;)Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v0

    .line 559
    .local v0, "resourceEncoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TX;>;"
    if-eqz v0, :cond_0

    .line 560
    return-object v0

    .line 562
    :cond_0
    new-instance v1, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v1
.end method

.method public getRewinder(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/data/DataRewinder",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "data":Ljava/lang/Object;, "TX;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->dataRewinderRegistry:Lcom/bumptech/glide/load/data/DataRewinderRegistry;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/DataRewinderRegistry;->build(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;

    move-result-object v0

    return-object v0
.end method

.method public getSourceEncoder(Ljava/lang/Object;)Lcom/bumptech/glide/load/Encoder;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/Encoder",
            "<TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;
        }
    .end annotation

    .prologue
    .line 568
    .local p1, "data":Ljava/lang/Object;, "TX;"
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->encoderRegistry:Lcom/bumptech/glide/provider/EncoderRegistry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/provider/EncoderRegistry;->getEncoder(Ljava/lang/Class;)Lcom/bumptech/glide/load/Encoder;

    move-result-object v0

    .line 569
    .local v0, "encoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TX;>;"
    if-eqz v0, :cond_0

    .line 570
    return-object v0

    .line 572
    :cond_0
    new-instance v1, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v1
.end method

.method public isResourceEncoderAvailable(Lcom/bumptech/glide/load/engine/Resource;)Z
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/Resource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->resourceEncoderRegistry:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->get(Ljava/lang/Class;)Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Encoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/Encoder",
            "<TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->encoderRegistry:Lcom/bumptech/glide/provider/EncoderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/provider/EncoderRegistry;->prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V

    .line 127
    return-object p0
.end method

.method public prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/ResourceEncoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TTResource;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->resourceEncoderRegistry:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 337
    return-object p0
.end method

.method public prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/ResourceDecoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p3, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TData;TTResource;>;"
    const-string v0, "legacy_prepend_all"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    .line 216
    return-object p0
.end method

.method public prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/model/ModelLoaderFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TModel;TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TModel;TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 436
    return-object p0
.end method

.method public prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1, "bucket"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/ResourceDecoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 246
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p4, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TData;TTResource;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->prepend(Ljava/lang/String;Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 247
    return-object p0
.end method

.method public register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1, "parser"    # Lcom/bumptech/glide/load/ImageHeaderParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->imageHeaderParserRegistry:Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;->add(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    .line 375
    return-object p0
.end method

.method public register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/data/DataRewinder$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataRewinder$Factory",
            "<*>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "factory":Lcom/bumptech/glide/load/data/DataRewinder$Factory;, "Lcom/bumptech/glide/load/data/DataRewinder$Factory<*>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->dataRewinderRegistry:Lcom/bumptech/glide/load/data/DataRewinderRegistry;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/DataRewinderRegistry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)V

    .line 347
    return-object p0
.end method

.method public register(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Encoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/Encoder",
            "<TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TData;>;"
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/ResourceEncoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 295
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TTResource;>;"
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TTResource;TTranscode;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResource;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    .local p3, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TTResource;TTranscode;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 365
    return-object p0
.end method

.method public replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/model/ModelLoaderFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<+TModel;+TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 468
    return-object p0
.end method

.method public final setResourceDecoderBucketPriorityList(Ljava/util/List;)Lcom/bumptech/glide/Registry;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "buckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 269
    .local v0, "modifiedBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "legacy_prepend_all"

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 270
    const-string v1, "legacy_append"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->decoderRegistry:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->setBucketPriorityList(Ljava/util/List;)V

    .line 272
    return-object p0
.end method
