.class Lcom/muvee/uhd2hd/Transcoder$a;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Lcom/muvee/uhd2hd/ITranscoderListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/uhd2hd/Transcoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field b:Ljava/util/concurrent/atomic/AtomicInteger;

.field c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Lcom/muvee/uhd2hd/Transcoder;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/muvee/uhd2hd/Transcoder;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 148
    iput-object p1, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 144
    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 146
    const-string v0, "/sdcard/output.mp4"

    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->e:Ljava/lang/String;

    .line 150
    const-string v0, "com.muvee.uhd2hd.Transcoder"

    const-string v1, "::Analyzer: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 160
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 161
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder;->a(Lcom/muvee/uhd2hd/Transcoder;)Lcom/muvee/uhd2hd/Transcoder$b;

    move-result-object v4

    .line 162
    const/16 v0, 0xa

    iput v0, v4, Lcom/muvee/uhd2hd/Transcoder$b;->f:I

    .line 163
    iget-object v6, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    new-instance v0, Lcom/muvee/uhd2hd/Transcoder$c;

    iget-object v1, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/muvee/uhd2hd/Transcoder$a;->e:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/muvee/uhd2hd/Transcoder$c;-><init>(Lcom/muvee/uhd2hd/Transcoder;Ljava/lang/String;Ljava/lang/String;Lcom/muvee/uhd2hd/Transcoder$b;Lcom/muvee/uhd2hd/ITranscoderListener;)V

    invoke-static {v6, v0}, Lcom/muvee/uhd2hd/Transcoder;->a(Lcom/muvee/uhd2hd/Transcoder;Lcom/muvee/uhd2hd/Transcoder$c;)Lcom/muvee/uhd2hd/Transcoder$c;

    .line 164
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v2}, Lcom/muvee/uhd2hd/Transcoder;->b(Lcom/muvee/uhd2hd/Transcoder;)Lcom/muvee/uhd2hd/Transcoder$c;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/muvee/uhd2hd/Transcoder;->a(Lcom/muvee/uhd2hd/Transcoder;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 165
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder;->c(Lcom/muvee/uhd2hd/Transcoder;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/muvee/uhd2hd/Transcoder$a;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    const-string v1, "Transcoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temp File deletion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder;->d(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 179
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder;->e(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder;->f(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder;->g(Lcom/muvee/uhd2hd/Transcoder;)Lcom/muvee/uhd2hd/ITranscoderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/uhd2hd/Transcoder$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcoderReady(Z)V

    .line 183
    :cond_1
    return-void
.end method

.method public transcoderProgressUpdated(D)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public transcoderReady(Z)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public transcodingFailed(Lcom/muvee/uhd2hd/ETranscoderErrors;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 211
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 213
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder;->i(Lcom/muvee/uhd2hd/Transcoder;)Lcom/muvee/uhd2hd/Transcoder$b;

    move-result-object v4

    .line 214
    const/16 v0, 0xa

    iput v0, v4, Lcom/muvee/uhd2hd/Transcoder$b;->f:I

    .line 215
    iget-object v6, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    new-instance v0, Lcom/muvee/uhd2hd/Transcoder$c;

    iget-object v1, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/muvee/uhd2hd/Transcoder$a;->e:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/muvee/uhd2hd/Transcoder$c;-><init>(Lcom/muvee/uhd2hd/Transcoder;Ljava/lang/String;Ljava/lang/String;Lcom/muvee/uhd2hd/Transcoder$b;Lcom/muvee/uhd2hd/ITranscoderListener;)V

    invoke-static {v6, v0}, Lcom/muvee/uhd2hd/Transcoder;->a(Lcom/muvee/uhd2hd/Transcoder;Lcom/muvee/uhd2hd/Transcoder$c;)Lcom/muvee/uhd2hd/Transcoder$c;

    .line 216
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v2}, Lcom/muvee/uhd2hd/Transcoder;->b(Lcom/muvee/uhd2hd/Transcoder;)Lcom/muvee/uhd2hd/Transcoder$c;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/muvee/uhd2hd/Transcoder;->a(Lcom/muvee/uhd2hd/Transcoder;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 217
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder;->c(Lcom/muvee/uhd2hd/Transcoder;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    new-array v1, v2, [Lcom/muvee/uhd2hd/EncoderMode;

    invoke-static {v0, v1}, Lcom/muvee/uhd2hd/Transcoder;->a(Lcom/muvee/uhd2hd/Transcoder;[Lcom/muvee/uhd2hd/EncoderMode;)[Lcom/muvee/uhd2hd/EncoderMode;

    .line 222
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder;->h(Lcom/muvee/uhd2hd/Transcoder;)[Lcom/muvee/uhd2hd/EncoderMode;

    move-result-object v0

    sget-object v1, Lcom/muvee/uhd2hd/EncoderMode;->UNSUPPORTED:Lcom/muvee/uhd2hd/EncoderMode;

    aput-object v1, v0, v3

    .line 223
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 224
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public transcodingSucess()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 197
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/muvee/uhd2hd/EncoderMode;

    invoke-static {v0, v1}, Lcom/muvee/uhd2hd/Transcoder;->a(Lcom/muvee/uhd2hd/Transcoder;[Lcom/muvee/uhd2hd/EncoderMode;)[Lcom/muvee/uhd2hd/EncoderMode;

    .line 199
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder;->h(Lcom/muvee/uhd2hd/Transcoder;)[Lcom/muvee/uhd2hd/EncoderMode;

    move-result-object v0

    sget-object v1, Lcom/muvee/uhd2hd/EncoderMode;->NORMAL_1080P:Lcom/muvee/uhd2hd/EncoderMode;

    aput-object v1, v0, v3

    .line 200
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder;->h(Lcom/muvee/uhd2hd/Transcoder;)[Lcom/muvee/uhd2hd/EncoderMode;

    move-result-object v0

    sget-object v1, Lcom/muvee/uhd2hd/EncoderMode;->NORMAL_720P:Lcom/muvee/uhd2hd/EncoderMode;

    aput-object v1, v0, v2

    .line 205
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 206
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 207
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 202
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    new-array v1, v2, [Lcom/muvee/uhd2hd/EncoderMode;

    invoke-static {v0, v1}, Lcom/muvee/uhd2hd/Transcoder;->a(Lcom/muvee/uhd2hd/Transcoder;[Lcom/muvee/uhd2hd/EncoderMode;)[Lcom/muvee/uhd2hd/EncoderMode;

    .line 203
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$a;->d:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v0}, Lcom/muvee/uhd2hd/Transcoder;->h(Lcom/muvee/uhd2hd/Transcoder;)[Lcom/muvee/uhd2hd/EncoderMode;

    move-result-object v0

    sget-object v1, Lcom/muvee/uhd2hd/EncoderMode;->NORMAL_720P:Lcom/muvee/uhd2hd/EncoderMode;

    aput-object v1, v0, v3

    goto :goto_0
.end method
