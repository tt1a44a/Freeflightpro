.class public interface abstract Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;
.super Ljava/lang/Object;
.source "FrameTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Iterator"
.end annotation


# virtual methods
.method public abstract getInTimeMs()J
.end method

.method public abstract hasNext()Z
.end method

.method public abstract next(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;)J
.end method
