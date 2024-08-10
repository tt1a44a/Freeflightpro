.class Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;
.super Ljava/lang/Object;
.source "UsbAccessoryMux.java"

# interfaces
.implements Lcom/parrot/mux/Mux$IOnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
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
    .line 182
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;->this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;->this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->access$200(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2$1;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2$1;-><init>(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method
