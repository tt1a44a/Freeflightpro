.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$4;
.super Ljava/lang/Object;
.source "MVDroneComposerEngine.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/AudioTrack;

.field final synthetic b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Landroid/media/AudioTrack;)V
    .locals 0

    .prologue
    .line 866
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$4;->b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iput-object p2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$4;->a:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaximumAudioOutprogressDifferent()I
    .locals 1

    .prologue
    .line 879
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b()I

    move-result v0

    return v0
.end method

.method public onAudioFrameUpdate([BIJ)V
    .locals 2

    .prologue
    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$4;->a:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    return-void

    .line 872
    :catch_0
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
