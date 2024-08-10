.class Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$2;
.super Ljava/lang/Object;
.source "FlypadUploaderTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$2;->this$1:Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$2;->this$1:Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$500(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Lcom/parrot/freeflight3/update/McuUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$2;->this$1:Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;

    iget-object v1, v1, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v1}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$600(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$2;->this$1:Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$002(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;I)I

    .line 243
    return-void
.end method
