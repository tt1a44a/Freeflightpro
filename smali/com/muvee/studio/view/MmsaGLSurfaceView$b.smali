.class Lcom/muvee/studio/view/MmsaGLSurfaceView$b;
.super Lcom/muvee/studio/view/MmsaGLSurfaceView$a;
.source "MmsaGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/studio/view/MmsaGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field final synthetic i:Lcom/muvee/studio/view/MmsaGLSurfaceView;

.field private j:[I


# direct methods
.method public constructor <init>(Lcom/muvee/studio/view/MmsaGLSurfaceView;IIIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 344
    iput-object p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->i:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    .line 345
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput p2, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p5, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView$a;-><init>(Lcom/muvee/studio/view/MmsaGLSurfaceView;[I)V

    .line 350
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->j:[I

    .line 351
    iput p2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->c:I

    .line 352
    iput p3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->d:I

    .line 353
    iput p4, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->e:I

    .line 354
    iput p5, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->f:I

    .line 355
    iput p6, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->g:I

    .line 356
    iput p7, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->h:I

    .line 357
    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->j:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->j:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 416
    :cond_0
    return p5
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 14

    .prologue
    .line 362
    move-object/from16 v0, p3

    array-length v8, v0

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v4, p3, v7

    .line 363
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 365
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    .line 367
    iget v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->g:I

    if-lt v9, v2, :cond_1

    iget v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->h:I

    if-lt v1, v2, :cond_1

    .line 368
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 370
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 372
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 374
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 376
    const/16 v5, 0x3032

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 378
    const/16 v5, 0x3031

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    .line 389
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 390
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sampleBuffer: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " samples: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->c:I

    if-ne v9, v1, :cond_0

    iget v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->d:I

    if-ne v10, v1, :cond_0

    iget v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->e:I

    if-ne v11, v1, :cond_0

    iget v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->f:I

    if-ne v12, v1, :cond_0

    .line 392
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Config Found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :goto_1
    return-object v4

    .line 397
    :cond_0
    const/16 v5, 0x30e1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    .line 398
    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 399
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sampleBuffer: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " samples: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->c:I

    if-ne v9, v1, :cond_1

    iget v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->d:I

    if-ne v10, v1, :cond_1

    iget v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->e:I

    if-ne v11, v1, :cond_1

    iget v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;->f:I

    if-ne v12, v1, :cond_1

    .line 401
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NV Config Found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 362
    :cond_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_0

    .line 407
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
