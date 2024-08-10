.class Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;
.super Ljava/lang/Object;
.source "TinosGamePad.java"

# interfaces
.implements Lcom/parrot/freeflight3/OnRemoteInfosListener;


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
    .line 93
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfosRecovered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "csrVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mcuVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "serialNumber"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v0, p3}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$1102(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$1202(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$1302(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    invoke-static {p3}, Lcom/parrot/freeflight/util/dataCollect/DataCollection;->registerSerial(Ljava/lang/String;)Z

    .line 102
    return-void
.end method
