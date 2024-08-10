.class public interface abstract Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;
.super Ljava/lang/Object;
.source "SmartVideoRecorderEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmartVideoRecorderCallBack"
.end annotation


# virtual methods
.method public abstract onFrameAvailable(Landroid/graphics/SurfaceTexture;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;
.end method

.method public abstract onProgressUpdate(JJ)V
.end method

.method public abstract onSaveCompleted(Ljava/lang/String;)V
.end method

.method public abstract onSurfaceTextureInitilized(Landroid/graphics/SurfaceTexture;)V
.end method
