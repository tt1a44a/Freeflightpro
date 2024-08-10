.class abstract Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$DoubleCommand;
.super Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;
.source "FixedWingOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DoubleCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Double;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$DoubleCommand;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;

    .line 158
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;-><init>(Ljava/lang/Object;)V

    .line 159
    return-void
.end method
