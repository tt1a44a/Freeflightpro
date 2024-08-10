.class Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;
.super Ljava/lang/Object;
.source "GamePadConfigurationActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadListChange(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "knownGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    .local p2, "discoveredGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$000(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;Ljava/util/List;)V

    .line 59
    return-void
.end method
