.class public Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;
.super Ljava/lang/Object;
.source "BlackboxWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;
    }
.end annotation


# static fields
.field public static final FILENAME_PREFIX:Ljava/lang/String; = "BlackboxRecord_"

.field public static final GZIP_EXTENSION:Ljava/lang/String; = ".gzip"

.field private static final TAG:Ljava/lang/String; = "BlackboxWriter"


# instance fields
.field private final mBlackboxDirectory:Ljava/io/File;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDirectoryCreated:Z

.field private final mWriteListener:Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "writeListener"    # Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;->mWriteListener:Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Blackbox"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;->mBlackboxDirectory:Ljava/io/File;

    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;->mBlackboxDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->createBlackboxDirectory(Ljava/io/File;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;->mDirectoryCreated:Z

    .line 36
    return-void
.end method


# virtual methods
.method public createEntryFile(Lcom/parrot/freeflight/blackbox/recorder/entries/Header;Ljava/util/List;Lcom/parrot/freeflight/blackbox/LimitedList;)V
    .locals 10
    .param p1, "header"    # Lcom/parrot/freeflight/blackbox/recorder/entries/Header;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/blackbox/LimitedList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/blackbox/recorder/entries/Header;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;",
            ">;",
            "Lcom/parrot/freeflight/blackbox/LimitedList",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "dataEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .local p3, "pacedEntries":Lcom/parrot/freeflight/blackbox/LimitedList;, "Lcom/parrot/freeflight/blackbox/LimitedList<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    iget-boolean v1, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;->mDirectoryCreated:Z

    if-eqz v1, :cond_0

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 42
    .local v8, "timestamp":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlackboxRecord_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->getProductSerial()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "fileName":Ljava/lang/String;
    new-instance v0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;->mBlackboxDirectory:Ljava/io/File;

    iget-object v6, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;->mWriteListener:Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/parrot/freeflight/blackbox/recorder/entries/Header;Ljava/util/List;Lcom/parrot/freeflight/blackbox/LimitedList;Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;)V

    .line 45
    .local v0, "newTask":Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v3}, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    .end local v0    # "newTask":Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v8    # "timestamp":J
    :cond_0
    return-void
.end method
