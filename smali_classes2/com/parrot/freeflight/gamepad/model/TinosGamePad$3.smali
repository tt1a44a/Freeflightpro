.class Lcom/parrot/freeflight/gamepad/model/TinosGamePad$3;
.super Ljava/lang/Object;
.source "TinosGamePad.java"

# interfaces
.implements Lcom/parrot/freeflight3/OnRemoteBatteryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$3;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryChange(I)V
    .locals 1
    .param p1, "batteryLevel"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$3;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$902(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)I

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$3;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$1000(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)V

    .line 89
    return-void
.end method
