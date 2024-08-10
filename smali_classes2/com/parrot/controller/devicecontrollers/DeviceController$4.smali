.class Lcom/parrot/controller/devicecontrollers/DeviceController$4;
.super Ljava/lang/Object;
.source "DeviceController.java"

# interfaces
.implements Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoStream2Receiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$4;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFreeBuffer()I
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$4;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v0, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    invoke-interface {v0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;->getFreeBuffer()I

    move-result v0

    return v0
.end method

.method public onBufferReady(IJIJIJJJLcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;III)V
    .locals 20
    .param p1, "bufferIdx"    # I
    .param p2, "metadata"    # J
    .param p4, "metadataSize"    # I
    .param p5, "userdata"    # J
    .param p7, "userdataSize"    # I
    .param p8, "auTimestamp"    # J
    .param p10, "auTimestampRaw"    # J
    .param p12, "auTimestampLocal"    # J
    .param p14, "auSyncType"    # Lcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;
    .param p15, "isComplete"    # I
    .param p16, "hasErrors"    # I
    .param p17, "isRef"    # I

    .prologue
    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/DeviceController$4;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v2, v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-object/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    invoke-interface/range {v2 .. v19}, Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;->onBufferReady(IJIJIJJJLcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;III)V

    .line 1212
    return-void
.end method

.method public onSpsPpsReady(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$4;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v0, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    invoke-interface {v0, p1, p2}, Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;->onSpsPpsReady(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
