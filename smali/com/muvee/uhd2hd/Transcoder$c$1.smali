.class Lcom/muvee/uhd2hd/Transcoder$c$1;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/audiosizeconvertor/OnProgressUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/uhd2hd/Transcoder$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/uhd2hd/Transcoder$c;


# direct methods
.method constructor <init>(Lcom/muvee/uhd2hd/Transcoder$c;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/muvee/uhd2hd/Transcoder$c$1;->a:Lcom/muvee/uhd2hd/Transcoder$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(IF)V
    .locals 8

    .prologue
    .line 522
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$c$1;->a:Lcom/muvee/uhd2hd/Transcoder$c;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder$c;->a(Lcom/muvee/uhd2hd/Transcoder$c;)Lcom/muvee/uhd2hd/ITranscoderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$c$1;->a:Lcom/muvee/uhd2hd/Transcoder$c;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder$c;->a(Lcom/muvee/uhd2hd/Transcoder$c;)Lcom/muvee/uhd2hd/ITranscoderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/uhd2hd/Transcoder$c$1;->a:Lcom/muvee/uhd2hd/Transcoder$c;

    iget-object v1, v1, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    .line 524
    invoke-static {v1}, Lcom/muvee/uhd2hd/Transcoder;->m(Lcom/muvee/uhd2hd/Transcoder;)D

    move-result-wide v2

    float-to-double v4, p2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    iget-object v1, p0, Lcom/muvee/uhd2hd/Transcoder$c$1;->a:Lcom/muvee/uhd2hd/Transcoder$c;

    iget-object v1, v1, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v1}, Lcom/muvee/uhd2hd/Transcoder;->n(Lcom/muvee/uhd2hd/Transcoder;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcoderProgressUpdated(D)V

    .line 526
    :cond_0
    return-void
.end method
