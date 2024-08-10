.class public Lcom/parrot/freeflight/core/registration/RegistrationTrial;
.super Ljava/lang/Object;
.source "RegistrationTrial.java"


# static fields
.field private static final CURRENT_TIME_SUFFIX:Ljava/lang/String; = "_currentTime"

.field public static final INVALID_TIME:J = -0x1L

.field private static final LOCAL_TIME_LIMIT_SUFFIX:Ljava/lang/String; = "_localTimeLimit"

.field private static final LOCAL_TIME_SUFFIX:Ljava/lang/String; = "_localTime"

.field private static final LOCAL_TO_SERVER_DIFF:Ljava/lang/String; = "_localToServerDiff"

.field private static final LOCAL_VALIDITY_SUFFIX:Ljava/lang/String; = "_localValidity"

.field private static final MAX_DIFF_LOCAL_TO_SERVER_IN_HOURS:I = 0x18

.field private static final REQUEST_CURRENT_TIME:Ljava/lang/String; = "current_time"

.field private static final REQUEST_EXPIRATION_KEY:Ljava/lang/String; = "expiration"

.field private static final REQUEST_TRIAL_REMAINING_TIME:Ljava/lang/String; = "trial_remaining_time"

.field private static final REQUEST_TRIAL_STARTING_TIME:Ljava/lang/String; = "trial_starting_time"

.field private static final REQUEST_TRIAL_TIME:Ljava/lang/String; = "trial_time"

.field private static final REQUEST_VALIDITY_KEY:Ljava/lang/String; = "validity"

.field private static final SERIAL_SUFFIX:Ljava/lang/String; = "_serial"

.field private static final TIME_LIMIT_SUFFIX:Ljava/lang/String; = "_timeLimit"

.field private static final TRIAL_REMAINING_TIME_SUFFIX:Ljava/lang/String; = "_trialRemainingTime"

.field private static final TRIAL_STARTING_TIME_SUFFIX:Ljava/lang/String; = "_trialStartingTime"

.field private static final TRIAL_TIME_SUFFIX:Ljava/lang/String; = "_trialTime"


# instance fields
.field private final mId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLocalCurrentTime:J

.field private mLocalEndTime:J

.field private mLocalToServerDiff:J

.field private mLocalValidity:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSerial:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mServerCurrentTime:J

.field private mServerEndTime:J

.field private mServerRemainingTime:J

.field private mServerStartTime:J

.field private mServerValidity:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTrialTime:J


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerValidity:Ljava/lang/Boolean;

    .line 53
    iput-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalValidity:Ljava/lang/Boolean;

    .line 55
    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerStartTime:J

    .line 56
    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerCurrentTime:J

    .line 57
    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerEndTime:J

    .line 58
    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mTrialTime:J

    .line 59
    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerRemainingTime:J

    .line 60
    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalEndTime:J

    .line 61
    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalCurrentTime:J

    .line 62
    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalToServerDiff:J

    .line 75
    iput-object p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 76
    iput-object p2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    .locals 3
    .param p0, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    const-class v2, Lcom/parrot/freeflight/core/registration/RegistrationTrial;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;

    invoke-direct {v0, p0, p1}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 69
    .local v0, "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    invoke-direct {v0}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->loadFromSharedPreferences()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit v2

    return-object v0

    .line 68
    .end local v0    # "trial":Lcom/parrot/freeflight/core/registration/RegistrationTrial;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private loadFromSharedPreferences()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerValidity:Ljava/lang/Boolean;

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_serial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSerial:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_localValidity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalValidity:Ljava/lang/Boolean;

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_trialStartingTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerStartTime:J

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_currentTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerCurrentTime:J

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_timeLimit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerEndTime:J

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_trialTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mTrialTime:J

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_trialRemainingTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerRemainingTime:J

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_localTimeLimit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalEndTime:J

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_localTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalCurrentTime:J

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_localToServerDiff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalToServerDiff:J

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public checkServerValuesValidity()Z
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    .line 163
    iget-object v7, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalValidity:Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    iget-wide v8, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerStartTime:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    iget-wide v8, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerCurrentTime:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    iget-wide v8, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerEndTime:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    iget-wide v8, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mTrialTime:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v6

    .line 167
    :cond_1
    iget-wide v8, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerStartTime:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    iget-wide v8, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerEndTime:J

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    :cond_2
    iget-wide v8, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerEndTime:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    iget-wide v8, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerStartTime:J

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    .line 171
    :cond_3
    iget-wide v8, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerEndTime:J

    iget-wide v10, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerStartTime:J

    sub-long v4, v8, v10

    .line 172
    .local v4, "localTrialTime":J
    iget-wide v8, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerEndTime:J

    iget-wide v10, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerCurrentTime:J

    sub-long v2, v8, v10

    .line 173
    .local v2, "localRemainingTime":J
    iget-wide v8, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mTrialTime:J

    cmp-long v7, v4, v8

    if-nez v7, :cond_0

    iget-wide v8, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerRemainingTime:J

    cmp-long v7, v2, v8

    if-nez v7, :cond_0

    .line 177
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalToServerDiff:J

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    .line 178
    .local v0, "diffInHours":J
    const-wide/16 v8, 0x18

    cmp-long v7, v0, v8

    if-gez v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public checkUserBehavior(J)Z
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, "temperedWith":Z
    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerEndTime:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalEndTime:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerEndTime:J

    iget-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalEndTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalToServerDiff:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 212
    :cond_0
    const/4 v1, 0x1

    .line 215
    :cond_1
    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalCurrentTime:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalCurrentTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    .line 216
    :cond_2
    const/4 v1, 0x1

    .line 220
    :cond_3
    if-eqz v1, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->invalidate()V

    .line 229
    :goto_0
    if-nez v1, :cond_5

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 223
    :cond_4
    iput-wide p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalCurrentTime:J

    .line 224
    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_localTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalCurrentTime:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 229
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public checkValid(J)I
    .locals 7
    .param p1, "currentTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 183
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerValidity:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 184
    const/4 v0, -0x1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerValidity:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalValidity:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->checkUserBehavior(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalEndTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalEndTime:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_3

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->invalidate()V

    goto :goto_0

    .line 203
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRemainingTime(J)I
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, -0x1

    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->checkValid(J)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v2

    .line 237
    :cond_1
    iget-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalEndTime:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    iget-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mTrialTime:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 241
    iget-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalEndTime:J

    sub-long v0, v4, p1

    .line 242
    .local v0, "timeDiff":J
    cmp-long v3, v0, v6

    if-gez v3, :cond_2

    .line 243
    const/4 v2, 0x0

    goto :goto_0

    .line 246
    :cond_2
    iget-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mTrialTime:J

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 253
    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mTrialTime:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 254
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 256
    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 151
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalValidity:Ljava/lang/Boolean;

    .line 152
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_localValidity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalValidity:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    return-void
.end method

.method public load(Landroid/util/JsonReader;Ljava/lang/String;J)V
    .locals 7
    .param p1, "reader"    # Landroid/util/JsonReader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "localCurrentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 103
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 104
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "validity"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerValidity:Ljava/lang/Boolean;

    .line 107
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerValidity:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalValidity:Ljava/lang/Boolean;

    goto :goto_0

    .line 108
    :cond_0
    const-string/jumbo v3, "trial_starting_time"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerStartTime:J

    goto :goto_0

    .line 110
    :cond_1
    const-string v3, "current_time"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerCurrentTime:J

    goto :goto_0

    .line 112
    :cond_2
    const-string v3, "expiration"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerEndTime:J

    goto :goto_0

    .line 114
    :cond_3
    const-string/jumbo v3, "trial_time"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mTrialTime:J

    goto :goto_0

    .line 116
    :cond_4
    const-string/jumbo v3, "trial_remaining_time"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 117
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerRemainingTime:J

    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 123
    .end local v2    # "name":Ljava/lang/String;
    :cond_6
    iget-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerCurrentTime:J

    sub-long v0, v4, p3

    .line 124
    .local v0, "localToServerDiff":J
    iget-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerEndTime:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalEndTime:J

    .line 125
    iput-wide p3, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalCurrentTime:J

    .line 126
    iput-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalToServerDiff:J

    .line 127
    iput-object p2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSerial:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 130
    return-void
.end method

.method public notStarted()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 158
    iget-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerEndTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save()V
    .locals 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerValidity:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_serial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mSerial:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_trialStartingTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerStartTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_currentTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerCurrentTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_timeLimit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerEndTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_trialTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mTrialTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_trialRemainingTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mServerRemainingTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_localValidity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalValidity:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_localTimeLimit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalEndTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_localTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalCurrentTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_localToServerDiff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->mLocalToServerDiff:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    return-void
.end method
