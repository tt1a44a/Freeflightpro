.class public Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;
.super Ljava/lang/Object;
.source "EGLHelplerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;,
        Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$f;,
        Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$b;,
        Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$a;,
        Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$c;,
        Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$d;
    }
.end annotation


# static fields
.field private static final a:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

.field private static b:I


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Landroid/view/Surface;

.field private e:[Landroid/graphics/SurfaceTexture;

.field private f:[I

.field private g:Ljava/lang/Thread;

.field private h:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private i:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private j:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private k:I

.field private l:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->a:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    .line 87
    const/4 v0, 0x4

    sput v0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->c:Ljava/util/List;

    .line 35
    invoke-direct {p0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->b()V

    .line 36
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->b:I

    return v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->k:I

    return v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->k:I

    return p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->g:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;[I)[I
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->f:[I

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;[Landroid/graphics/SurfaceTexture;)[Landroid/graphics/SurfaceTexture;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->e:[Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;[Landroid/view/Surface;)[Landroid/view/Surface;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->d:[Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic b(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->h:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->h:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$f;-><init>(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;Z)V

    iput-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->h:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->i:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$c;

    invoke-direct {v0, p0, v2}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$c;-><init>(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$1;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->i:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->j:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 46
    new-instance v0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$d;

    invoke-direct {v0, v2}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$d;-><init>(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$1;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->j:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 48
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)Landroid/opengl/GLSurfaceView$EGLContextFactory;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->i:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic d(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->j:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)[I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->f:[I

    return-object v0
.end method

.method static synthetic g(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)[Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->e:[Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public static getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;
    .locals 1

    .prologue
    .line 716
    sget-object v0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->a:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    return-object v0
.end method

.method static synthetic h(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)[Landroid/view/Surface;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->d:[Landroid/view/Surface;

    return-object v0
.end method


# virtual methods
.method public closeEGL()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->l:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->l:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->d()V

    .line 145
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->l:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->e()V

    .line 149
    :cond_0
    return-void
.end method

.method public createSurface(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 74
    const-string v0, "com.muvee.dsg.mmapegl.EGLHelplerUtil"

    const-string v1, "::createSurface:%s "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->l:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    .line 78
    return-void
.end method

.method public destroySurface()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "com.muvee.dsg.mmapegl.EGLHelplerUtil"

    const-string v1, "::destroySurface:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->l:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->d()V

    .line 85
    return-void
.end method

.method public getCurrentThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->g:Ljava/lang/Thread;

    return-object v0
.end method

.method public getNextIndex()I
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSurface(I)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->d:[Landroid/view/Surface;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->e:[Landroid/graphics/SurfaceTexture;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTextureId(I)I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->f:[I

    aget v0, v0, p1

    return v0
.end method

.method public onCloseDecoder(I)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public setUpEGL()Z
    .locals 2

    .prologue
    .line 59
    :try_start_0
    new-instance v0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;-><init>(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->l:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;

    .line 60
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->l:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a()V

    .line 61
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->l:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    .line 62
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->l:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 68
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public swap()V
    .locals 4

    .prologue
    .line 122
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->e:[Landroid/graphics/SurfaceTexture;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->e:[Landroid/graphics/SurfaceTexture;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    const-string v0, "com.muvee.dsg.mmapegl.EGLHelplerUtil"

    const-string v1, "::swap:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->l:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;

    if-eqz v0, :cond_1

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->l:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :cond_1
    :goto_1
    return-void

    .line 136
    :catch_1
    move-exception v0

    .line 137
    const-string v1, "com.muvee.dsg.mmapegl.EGLHelplerUtil"

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
