.class public Lcom/muvee/mvdronecomposer/VideoItem;
.super Ljava/lang/Object;
.source "VideoItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Date;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationMs()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/muvee/mvdronecomposer/VideoItem;->c:J

    return-wide v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/VideoItem;->b:Ljava/util/Date;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/VideoItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setDurationMs(J)V
    .locals 1

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/muvee/mvdronecomposer/VideoItem;->c:J

    .line 28
    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/VideoItem;->b:Ljava/util/Date;

    .line 22
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/VideoItem;->a:Ljava/lang/String;

    .line 16
    return-void
.end method
