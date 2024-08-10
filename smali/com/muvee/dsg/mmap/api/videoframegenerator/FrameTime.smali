.class public abstract Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;
.super Ljava/lang/Object;
.source "FrameTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;,
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;,
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;,
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;,
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;,
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract createIterator(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;J)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;
.end method
