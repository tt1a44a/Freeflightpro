.class Lcom/muvee/studio/view/MmsaGLSurfaceView$f;
.super Lcom/muvee/studio/view/MmsaGLSurfaceView$b;
.source "MmsaGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/studio/view/MmsaGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic j:Lcom/muvee/studio/view/MmsaGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/muvee/studio/view/MmsaGLSurfaceView;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 434
    iput-object p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$f;->j:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    .line 435
    const/4 v3, 0x6

    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/muvee/studio/view/MmsaGLSurfaceView$b;-><init>(Lcom/muvee/studio/view/MmsaGLSurfaceView;IIIIII)V

    .line 436
    return-void

    :cond_0
    move v6, v5

    .line 435
    goto :goto_0
.end method
