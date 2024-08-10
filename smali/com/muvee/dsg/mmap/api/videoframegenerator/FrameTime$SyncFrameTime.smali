.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;
.super Ljava/lang/Object;
.source "FrameTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncFrameTime"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;->a:J

    .line 136
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;->CLOSEST_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    .line 140
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;->a:J

    .line 136
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;->CLOSEST_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    .line 147
    iput-wide p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;->a:J

    .line 148
    return-void
.end method

.method public constructor <init>(JLcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;)V
    .locals 3

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;->a:J

    .line 136
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;->CLOSEST_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    .line 157
    iput-wide p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;->a:J

    .line 158
    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    .line 159
    return-void
.end method


# virtual methods
.method public getMode()Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    return-object v0
.end method

.method public getTimeStampMs()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;->a:J

    return-wide v0
.end method
