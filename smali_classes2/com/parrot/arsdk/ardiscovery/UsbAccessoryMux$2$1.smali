.class Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2$1;
.super Ljava/lang/Object;
.source "UsbAccessoryMux.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;->onClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2$1;->this$1:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2$1;->this$1:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;

    iget-object v0, v0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;->this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->access$100(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)V

    .line 189
    return-void
.end method
