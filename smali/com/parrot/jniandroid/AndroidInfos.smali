.class public Lcom/parrot/jniandroid/AndroidInfos;
.super Ljava/lang/Object;
.source "AndroidInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/jniandroid/AndroidInfos$AndroidCpuFeature;,
        Lcom/parrot/jniandroid/AndroidInfos$AndroidCpuFamily;
    }
.end annotation


# static fields
.field public static final ANDROID_CPU_ARM_FEATURE_AES:I = 0x1000

.field public static final ANDROID_CPU_ARM_FEATURE_ARMv7:I = 0x1

.field public static final ANDROID_CPU_ARM_FEATURE_CRC32:I = 0x10000

.field public static final ANDROID_CPU_ARM_FEATURE_IDIV_ARM:I = 0x200

.field public static final ANDROID_CPU_ARM_FEATURE_IDIV_THUMB2:I = 0x400

.field public static final ANDROID_CPU_ARM_FEATURE_LDREX_STREX:I = 0x8

.field public static final ANDROID_CPU_ARM_FEATURE_NEON:I = 0x4

.field public static final ANDROID_CPU_ARM_FEATURE_NEON_FMA:I = 0x100

.field public static final ANDROID_CPU_ARM_FEATURE_PMULL:I = 0x2000

.field public static final ANDROID_CPU_ARM_FEATURE_SHA1:I = 0x4000

.field public static final ANDROID_CPU_ARM_FEATURE_SHA2:I = 0x8000

.field public static final ANDROID_CPU_ARM_FEATURE_VFP_D32:I = 0x20

.field public static final ANDROID_CPU_ARM_FEATURE_VFP_FMA:I = 0x80

.field public static final ANDROID_CPU_ARM_FEATURE_VFP_FP16:I = 0x40

.field public static final ANDROID_CPU_ARM_FEATURE_VFPv2:I = 0x10

.field public static final ANDROID_CPU_ARM_FEATURE_VFPv3:I = 0x2

.field public static final ANDROID_CPU_ARM_FEATURE_iWMMXt:I = 0x800

.field public static final ANDROID_CPU_FAMILY_ARM:I = 0x1

.field public static final ANDROID_CPU_FAMILY_ARM64:I = 0x4

.field public static final ANDROID_CPU_FAMILY_MIPS:I = 0x3

.field public static final ANDROID_CPU_FAMILY_MIPS64:I = 0x6

.field public static final ANDROID_CPU_FAMILY_UNKNOWN:I = 0x0

.field public static final ANDROID_CPU_FAMILY_X86:I = 0x2

.field public static final ANDROID_CPU_FAMILY_X86_64:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static androidCpuFamily()I
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/parrot/jniandroid/AndroidInfos;->nativeStaticAndroidCpuFamily()I

    move-result v0

    return v0
.end method

.method public static androidCpuFeatures()J
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/parrot/jniandroid/AndroidInfos;->nativeStaticAndroidCpuFeatures()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeStaticAndroidCpuFamily()I
.end method

.method private static native nativeStaticAndroidCpuFeatures()J
.end method
