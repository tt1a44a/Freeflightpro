.class public Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
.super Ljava/lang/Object;
.source "VirtualInputDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;,
        Lcom/parrot/freeflight/gamepad/VirtualInputDevice$TriggerEventListener;,
        Lcom/parrot/freeflight/gamepad/VirtualInputDevice$JoystickEventListener;
    }
.end annotation


# instance fields
.field private final mEventSender:Lcom/parrot/freeflight/gamepad/EventSender;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadEventListener:Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

.field private final mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 1
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$1;-><init>(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    .line 81
    new-instance v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;-><init>(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePadEventListener:Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 33
    new-instance v0, Lcom/parrot/freeflight/gamepad/EventSender;

    invoke-direct {v0, p2}, Lcom/parrot/freeflight/gamepad/EventSender;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mEventSender:Lcom/parrot/freeflight/gamepad/EventSender;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->notifyChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)Lcom/parrot/freeflight/gamepad/EventSender;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mEventSender:Lcom/parrot/freeflight/gamepad/EventSender;

    return-object v0
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;

    .line 68
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;
    invoke-interface {v0, p0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;->onChange(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V

    goto :goto_0

    .line 70
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addListener(Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {p1, p0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;->onChange(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V

    .line 54
    return-void
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->stop()V

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mEventSender:Lcom/parrot/freeflight/gamepad/EventSender;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/EventSender;->close()V

    .line 64
    return-void
.end method

.method public getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method protected removeListener(Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method protected start()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->addStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePadEventListener:Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->addEventListener(Lcom/parrot/freeflight/gamepad/GamePad$EventListener;)V

    .line 39
    return-void
.end method

.method protected stop()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->mGamePadEventListener:Lcom/parrot/freeflight/gamepad/GamePad$EventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeEventListener(Lcom/parrot/freeflight/gamepad/GamePad$EventListener;)V

    .line 44
    return-void
.end method
