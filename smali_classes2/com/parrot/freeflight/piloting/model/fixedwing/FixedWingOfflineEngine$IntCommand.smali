.class abstract Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$IntCommand;
.super Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;
.source "FixedWingOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "IntCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$IntCommand;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;

    .line 165
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;-><init>(Ljava/lang/Object;)V

    .line 166
    return-void
.end method
