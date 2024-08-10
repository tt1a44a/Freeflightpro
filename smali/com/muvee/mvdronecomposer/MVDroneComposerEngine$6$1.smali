.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6$1;
.super Ljava/lang/Object;
.source "MVDroneComposerEngine.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->a([Ljava/lang/Void;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;)V
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(IF)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1046
    const-string v0, "::save::"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exporting state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;

    iput-boolean v4, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->a:Z

    .line 1052
    :goto_0
    return-void

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;[Ljava/lang/Object;)V

    goto :goto_0
.end method
