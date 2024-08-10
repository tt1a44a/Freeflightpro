.class Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;
.super Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;
.source "BitmapCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->loadSources(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/muvee/dsg/mmap/api/os/util/LockRunnable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;

.field final synthetic e:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;->e:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    iput-object p2, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;->d:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;

    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 213
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;->e:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;->d:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->a(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOAD_SOURCE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->quit(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    return-object v0
.end method
