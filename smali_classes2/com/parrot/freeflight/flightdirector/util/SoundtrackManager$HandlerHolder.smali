.class Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;
.super Ljava/lang/Object;
.source "SoundtrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerHolder"
.end annotation


# instance fields
.field public final listener:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public result:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;->listener:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;

    .line 319
    return-void
.end method
