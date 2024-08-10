.class Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$2;
.super Ljava/lang/Object;
.source "VideoFrameGenerator.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender$DrawFrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$2;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeSetVPMatrix([F[F)V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x5

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 507
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::onBeforeSetVPMatrix: 01 %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$2;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->i(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-static {p1, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 510
    invoke-static {p2, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 512
    aget v0, p2, v7

    neg-float v0, v0

    aput v0, p2, v7

    .line 513
    aget v0, p2, v8

    sub-float v0, v4, v0

    aput v0, p2, v8

    .line 515
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$2;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->i(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 533
    :goto_0
    return-void

    .line 517
    :sswitch_0
    invoke-static {p1, v5, v4, v6, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0

    .line 520
    :sswitch_1
    invoke-static {p1, v5, v6, v4, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0

    .line 523
    :sswitch_2
    invoke-static {p1, v5, v6, v6, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0

    .line 526
    :sswitch_3
    invoke-static {p1, v5, v4, v6, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0

    .line 515
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
