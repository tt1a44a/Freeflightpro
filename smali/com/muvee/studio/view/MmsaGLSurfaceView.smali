.class public Lcom/muvee/studio/view/MmsaGLSurfaceView;
.super Landroid/view/SurfaceView;
.source "MmsaGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/studio/view/MmsaGLSurfaceView$e;,
        Lcom/muvee/studio/view/MmsaGLSurfaceView$f;,
        Lcom/muvee/studio/view/MmsaGLSurfaceView$b;,
        Lcom/muvee/studio/view/MmsaGLSurfaceView$a;,
        Lcom/muvee/studio/view/MmsaGLSurfaceView$c;,
        Lcom/muvee/studio/view/MmsaGLSurfaceView$d;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static d:I


# instance fields
.field private c:Landroid/view/TextureView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:[Landroid/view/Surface;

.field private g:[Landroid/graphics/SurfaceTexture;

.field private h:[I

.field private i:Ljava/lang/Thread;

.field private j:I

.field private k:Landroid/view/Surface;

.field private l:Landroid/graphics/SurfaceTexture;

.field private m:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field public mSurfaceFrameCount:[J

.field private n:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private o:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private p:I

.field private q:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GL_OES_compressed_ETC1_RGB8_texture"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GL_OES_compressed_paletted_texture"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GL_AMD_compressed_3DC_texture"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GL_AMD_compressed_ATC_texture"

    aput-object v2, v0, v1

    const-string v1, "GL_EXT_texture_compression_latc"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "GL_EXT_texture_compression_dxt1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GL_EXT_texture_compression_s3tc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GL_IMG_texture_compression_pvrtc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GL_ATI_texture_compression_atitc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a:[Ljava/lang/String;

    .line 56
    const-class v0, Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->b:Ljava/lang/String;

    .line 164
    sput v3, Lcom/muvee/studio/view/MmsaGLSurfaceView;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->e:Ljava/util/List;

    .line 72
    invoke-direct {p0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->c()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->e:Ljava/util/List;

    .line 67
    invoke-direct {p0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->c()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->e:Ljava/util/List;

    .line 62
    invoke-direct {p0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->c()V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/muvee/studio/view/MmsaGLSurfaceView;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->p:I

    return v0
.end method

.method static synthetic a(Lcom/muvee/studio/view/MmsaGLSurfaceView;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->p:I

    return p1
.end method

.method static synthetic a(Lcom/muvee/studio/view/MmsaGLSurfaceView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->l:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/studio/view/MmsaGLSurfaceView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->k:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/muvee/studio/view/MmsaGLSurfaceView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->i:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/studio/view/MmsaGLSurfaceView;[I)[I
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->h:[I

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/studio/view/MmsaGLSurfaceView;[Landroid/graphics/SurfaceTexture;)[Landroid/graphics/SurfaceTexture;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->g:[Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/studio/view/MmsaGLSurfaceView;[Landroid/view/Surface;)[Landroid/view/Surface;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->f:[Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->d:I

    return v0
.end method

.method static synthetic b(Lcom/muvee/studio/view/MmsaGLSurfaceView;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->j:I

    return p1
.end method

.method static synthetic b(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->m:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic c(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->n:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->m:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/muvee/studio/view/MmsaGLSurfaceView$f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView$f;-><init>(Lcom/muvee/studio/view/MmsaGLSurfaceView;Z)V

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->m:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->n:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lcom/muvee/studio/view/MmsaGLSurfaceView$c;

    invoke-direct {v0, p0, v2}, Lcom/muvee/studio/view/MmsaGLSurfaceView$c;-><init>(Lcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/studio/view/MmsaGLSurfaceView$1;)V

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->n:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->o:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Lcom/muvee/studio/view/MmsaGLSurfaceView$d;

    invoke-direct {v0, v2}, Lcom/muvee/studio/view/MmsaGLSurfaceView$d;-><init>(Lcom/muvee/studio/view/MmsaGLSurfaceView$1;)V

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->o:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 97
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->o:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic e(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->h:[I

    return-object v0
.end method

.method public static fromTextureView(Landroid/view/TextureView;)Lcom/muvee/studio/view/MmsaGLSurfaceView;
    .locals 2

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    new-instance v0, Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 82
    iput-object p0, v0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->c:Landroid/view/TextureView;

    .line 83
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->g:[Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic h(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[Landroid/view/Surface;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->f:[Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic i(Lcom/muvee/studio/view/MmsaGLSurfaceView;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->j:I

    return v0
.end method

.method static synthetic j(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->l:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic k(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->k:Landroid/view/Surface;

    return-object v0
.end method


# virtual methods
.method public closeEGL()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->q:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->q:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c()V

    .line 239
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->q:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->d()V

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ON_FRAME_AVAIABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public getCurrentThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->i:Ljava/lang/Thread;

    return-object v0
.end method

.method public getNextIndex()I
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPreSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->k:Landroid/view/Surface;

    return-object v0
.end method

.method public getPreSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->l:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getPreTextureId()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->j:I

    return v0
.end method

.method public getSurface(I)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->f:[Landroid/view/Surface;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->g:[Landroid/graphics/SurfaceTexture;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTextureId(I)I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->h:[I

    aget v0, v0, p1

    return v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->c:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->c:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->c:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->c:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public onCloseDecoder(I)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public setGLViewPoint()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 769
    invoke-virtual {p0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getViewWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getViewHeight()I

    move-result v1

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 770
    return-void
.end method

.method public setUpEGL(I)Z
    .locals 2

    .prologue
    .line 131
    :try_start_0
    new-instance v0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    invoke-direct {v0, p0}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;-><init>(Lcom/muvee/studio/view/MmsaGLSurfaceView;)V

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->q:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    .line 132
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->q:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a()V

    .line 134
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->c:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->c:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 136
    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->q:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    invoke-virtual {v1, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a(Ljava/lang/Object;)Ljavax/microedition/khronos/opengles/GL;

    .line 140
    :goto_0
    const/4 v0, 0x1

    .line 144
    :goto_1
    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->q:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    invoke-virtual {p0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a(Ljava/lang/Object;)Ljavax/microedition/khronos/opengles/GL;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 144
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public swap()V
    .locals 4

    .prologue
    .line 216
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->g:[Landroid/graphics/SurfaceTexture;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->g:[Landroid/graphics/SurfaceTexture;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    sget-object v0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->b:Ljava/lang/String;

    const-string v1, "::swap:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->q:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    if-eqz v0, :cond_1

    .line 229
    :try_start_1
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->q:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    :cond_1
    :goto_1
    return-void

    .line 230
    :catch_1
    move-exception v0

    .line 231
    sget-object v1, Lcom/muvee/studio/view/MmsaGLSurfaceView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
