.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1$1;
.super Ljava/lang/Object;
.source "MVDroneComposerEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;->onProgressUpdate(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;F)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1$1;->b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;

    iput p2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1$1;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1$1;->b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    const/4 v1, -0x3

    iget v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1$1;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 342
    return-void
.end method
