.class abstract Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;
.super Ljava/lang/Thread;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LooperThread"
.end annotation


# instance fields
.field private isAlive:Z

.field private isRunning:Z

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 1

    .prologue
    .line 1922
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->isRunning:Z

    .line 1924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->isAlive:Z

    .line 1925
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 1962
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->isRunning:Z

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1946
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1953
    return-void
.end method

.method public abstract onloop()V
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->isRunning:Z

    .line 1932
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->onStart()V

    .line 1934
    :goto_0
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->isAlive:Z

    if-eqz v0, :cond_0

    .line 1936
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->onloop()V

    goto :goto_0

    .line 1938
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->onStop()V

    .line 1940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->isRunning:Z

    .line 1941
    return-void
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 1957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->isAlive:Z

    .line 1958
    return-void
.end method
