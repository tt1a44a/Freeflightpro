.class Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$1;
.super Ljava/lang/Object;
.source "UsbAccessoryMux.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->startMux(Landroid/hardware/usb/UsbAccessory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$1;->this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$1;->this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->access$000(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)Lcom/parrot/mux/Mux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/mux/Mux;->runReader()V

    .line 142
    return-void
.end method
