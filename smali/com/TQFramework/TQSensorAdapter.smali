.class public Lcom/TQFramework/TQSensorAdapter;
.super Ljava/lang/Object;
.source "TQSensorAdapter.java"


# static fields
.field private static instance:Lcom/TQFramework/TQSensorAdapter;

.field private static myContext:Landroid/content/Context;


# instance fields
.field private sensorMgr:Landroid/hardware/SensorManager;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/TQFramework/TQSensorAdapter;

    invoke-direct {v0}, Lcom/TQFramework/TQSensorAdapter;-><init>()V

    sput-object v0, Lcom/TQFramework/TQSensorAdapter;->instance:Lcom/TQFramework/TQSensorAdapter;

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/TQFramework/TQSensorAdapter;->myContext:Landroid/content/Context;

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native SensorEvent(FFF)I
.end method

.method static synthetic access$0(Lcom/TQFramework/TQSensorAdapter;F)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/TQFramework/TQSensorAdapter;->x:F

    return-void
.end method

.method static synthetic access$1(Lcom/TQFramework/TQSensorAdapter;F)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/TQFramework/TQSensorAdapter;->y:F

    return-void
.end method

.method static synthetic access$2(Lcom/TQFramework/TQSensorAdapter;F)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/TQFramework/TQSensorAdapter;->z:F

    return-void
.end method

.method static synthetic access$3(Lcom/TQFramework/TQSensorAdapter;)F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/TQFramework/TQSensorAdapter;->x:F

    return v0
.end method

.method static synthetic access$4(Lcom/TQFramework/TQSensorAdapter;)F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/TQFramework/TQSensorAdapter;->y:F

    return v0
.end method

.method static synthetic access$5(Lcom/TQFramework/TQSensorAdapter;)F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/TQFramework/TQSensorAdapter;->z:F

    return v0
.end method

.method public static sharedInstance()Lcom/TQFramework/TQSensorAdapter;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/TQFramework/TQSensorAdapter;->instance:Lcom/TQFramework/TQSensorAdapter;

    return-object v0
.end method


# virtual methods
.method public Start()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 21
    sget-object v2, Lcom/TQFramework/TQSensorAdapter;->myContext:Landroid/content/Context;

    const-string v4, "sensor"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/TQFramework/TQSensorAdapter;->sensorMgr:Landroid/hardware/SensorManager;

    .line 22
    iget-object v2, p0, Lcom/TQFramework/TQSensorAdapter;->sensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 23
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-nez v1, :cond_0

    .line 24
    const/4 v2, 0x0

    .line 42
    :goto_0
    return v2

    .line 29
    :cond_0
    new-instance v0, Lcom/TQFramework/TQSensorAdapter$1;

    invoke-direct {v0, p0}, Lcom/TQFramework/TQSensorAdapter$1;-><init>(Lcom/TQFramework/TQSensorAdapter;)V

    .line 41
    .local v0, "lsn":Landroid/hardware/SensorEventListener;
    iget-object v2, p0, Lcom/TQFramework/TQSensorAdapter;->sensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move v2, v3

    .line 42
    goto :goto_0
.end method

.method public UseSensor(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 15
    sput-object p1, Lcom/TQFramework/TQSensorAdapter;->myContext:Landroid/content/Context;

    return-void
.end method
