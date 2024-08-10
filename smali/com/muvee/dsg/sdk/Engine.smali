.class public Lcom/muvee/dsg/sdk/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# static fields
.field private static final a:Lcom/muvee/dsg/sdk/Engine;


# instance fields
.field private b:Z

.field private c:Lcom/muvee/studio/view/MmsaGLSurfaceView;

.field private d:Lcom/muvee/dsg/mams/image/cache/ImageCache;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/muvee/dsg/sdk/Engine;

    invoke-direct {v0}, Lcom/muvee/dsg/sdk/Engine;-><init>()V

    sput-object v0, Lcom/muvee/dsg/sdk/Engine;->a:Lcom/muvee/dsg/sdk/Engine;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/muvee/dsg/sdk/Engine;->e:Z

    .line 26
    iput-boolean v0, p0, Lcom/muvee/dsg/sdk/Engine;->f:Z

    .line 27
    iput-boolean v0, p0, Lcom/muvee/dsg/sdk/Engine;->g:Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/sdk/Engine;->h:Z

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/sdk/Engine;->i:Ljava/util/Map;

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/muvee/dsg/sdk/Engine;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/muvee/dsg/sdk/Engine;->a:Lcom/muvee/dsg/sdk/Engine;

    return-object v0
.end method


# virtual methods
.method public getFaceDescriptorMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/muvee/dsg/sdk/Engine;->i:Ljava/util/Map;

    return-object v0
.end method

.method public getImageCache()Lcom/muvee/dsg/mams/image/cache/ImageCache;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/muvee/dsg/sdk/Engine;->d:Lcom/muvee/dsg/mams/image/cache/ImageCache;

    return-object v0
.end method

.method public getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/muvee/dsg/sdk/Engine;->c:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    return-object v0
.end method

.method public isAdvancedMode()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/muvee/dsg/sdk/Engine;->e:Z

    return v0
.end method

.method public isPreview()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/muvee/dsg/sdk/Engine;->b:Z

    return v0
.end method

.method public isSingleVideoMode()Z
    .locals 5

    .prologue
    .line 63
    const-string v0, "com.muvee.dsg.sdk.Engine"

    const-string v1, "::isSingleVideoMode: %s,%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/muvee/dsg/sdk/Engine;->f:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-boolean v0, p0, Lcom/muvee/dsg/sdk/Engine;->f:Z

    return v0
.end method

.method public isSupportFastMotion()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/muvee/dsg/sdk/Engine;->h:Z

    return v0
.end method

.method public isUseAysnDecoder()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/muvee/dsg/sdk/Engine;->g:Z

    return v0
.end method

.method public setAdvancedMode(Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/muvee/dsg/sdk/Engine;->e:Z

    .line 60
    return-void
.end method

.method public setImageCache(Lcom/muvee/dsg/mams/image/cache/ImageCache;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/muvee/dsg/sdk/Engine;->d:Lcom/muvee/dsg/mams/image/cache/ImageCache;

    .line 80
    return-void
.end method

.method public setMmsaGLSurfaceView(Lcom/muvee/studio/view/MmsaGLSurfaceView;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/muvee/dsg/sdk/Engine;->c:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    .line 52
    return-void
.end method

.method public setPreview(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public setPreviewEx(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/muvee/dsg/sdk/Engine;->b:Z

    .line 48
    return-void
.end method

.method public setSingleVideoMode(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 69
    const-string v0, "com.muvee.dsg.sdk.Engine"

    const-string v1, "::setSingleVideoMode: %s,%s,%b"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-boolean p1, p0, Lcom/muvee/dsg/sdk/Engine;->f:Z

    .line 72
    return-void
.end method

.method public setSupportFastMotion(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/muvee/dsg/sdk/Engine;->h:Z

    .line 98
    return-void
.end method

.method public setUseAysnDecoder(Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/muvee/dsg/sdk/Engine;->g:Z

    .line 88
    return-void
.end method
